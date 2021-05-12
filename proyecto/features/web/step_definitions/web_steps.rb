$featurescenariostep = ''
$versionapp = ''
_id = 0

if ENV["ADB_DEVICE_ARG"].nil?
  require 'kraken-mobile/steps/web/kraken_steps'

  Then(/^I store a variable with the current url$/) do
    $url_variable = @driver.current_url    
    File.write('./.variable.txt', $url_variable)
    puts($url_variable) 
  end

  Given(/^I set scenario "([^\"]*)" and version app "([^\"]*)"$/) do |scenario, version|
    $featurescenariostep = scenario
    $versionapp = version
  end

  Given(/^I navigate to page with the url stored in the variable$/) do
    $url_variable = IO.read("./.variable.txt")  
    puts($url_variable)
    @driver.navigate.to $url_variable
    sleep 2
  end
  
  Then(/^I enter "([^\"])" into element having xpath "([^\"])"$/) do |text, xpath|
    @driver.find_element(:xpath, xpath).send_keys(text)
    sleep 2
  end
  
  Then(/^I click on element having xpath "([^\"]*)"$/) do |xpath|
   @driver.find_element(:xpath, xpath).click
   sleep 2
  end
  

  Then(/^I enter "([^\"]*)" into input field having xpath "([^\"]*)"$/) do |text, xpath|
    @driver.find_element(:xpath, xpath).clear
    @driver.find_element(:xpath, xpath).send_keys(text)
    sleep 2
   end

   Then(/^I select option with value "(.*?)" for dropdown having xpath "([^\"]*)"$/) do |op_value, sel_id|
    drop = @driver.find_element(:xpath, sel_id)
    choose = Selenium::WebDriver::Support::Select.new(drop)
    choose.select_by(:value, op_value)
    sleep 2
   end
 
   Then(/^I verify "([^\"]*)" into input field having xpath "([^\"]*)"$/) do |text, xpath|
    @driver.find_element(:xpath, xpath).text.include?(text)
    sleep 2
   end
 
   Then(/^I verify "([^\"]*)" into field having xpath "([^\"]*)"$/) do |text, xpath|
    @driver.find_element(:xpath, xpath).text.include?(text)
    sleep 2
   end

# Hooks
  AfterStep do |_scenario|
    Dir.mkdir("./vrt") unless File.exist?("./vrt")
    Dir.mkdir("./vrt/#{$versionapp}") unless File.exist?("./vrt/#{$versionapp}")
    Dir.mkdir("./vrt/#{$versionapp}/#{$featurescenariostep}") unless File.exist?("./vrt/#{$versionapp}/#{$featurescenariostep}")
    path = "./vrt/#{$versionapp}/#{$featurescenariostep}/#{$featurescenariostep}_#{_id += 1}.png"
    @driver.save_screenshot(path)
    embed(path, 'image/png', File.basename(path))
  end

end
