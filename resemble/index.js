const compareImages = require("resemblejs/compareImages")
const config = require("./config.json");
const fs = require('fs');

const { options } = config;

async function executeTest(){
    
    let resultInfo = {}

    let path = `C:/Users/USUARIO/Desktop/VRTResemble/JWDA-Kraken-Semana5`  
    let scenario = "Login_invalid_user_valid_pass"
    let steps = 6


    for(let i = 1; i < steps+1; i++){
        
        if (!fs.existsSync(`./results/${scenario}`)){
            fs.mkdirSync(`./results/${scenario}`, { recursive: true });
        }
        const data = await compareImages(
            fs.readFileSync(`./Screenshots/3.3.0/${scenario}/${scenario}_${i}.png`),
            fs.readFileSync(`./Screenshots/3.42.5/${scenario}/${scenario}_${i}.png`),
            options
        );
        resultInfo[i] = {
            isSameDimensions: data.isSameDimensions,
            dimensionDifference: data.dimensionDifference,
            rawMisMatchPercentage: data.rawMisMatchPercentage,
            misMatchPercentage: data.misMatchPercentage,
            diffBounds: data.diffBounds,
            analysisTime: data.analysisTime
        }
        fs.writeFileSync(`./results/${scenario}/compare_${scenario}_${i}.png`, data.getBuffer());

        fs.writeFileSync(`./results/${scenario}/report_step_${i}.html`, createReport(`${path}/resemble/Screenshots/3.3.0/${scenario}/${scenario}_${i}.png`,
        `${path}/resemble/Screenshots/3.42.5/${scenario}/${scenario}_${i}.png`,`${path}/resemble/results/${scenario}/compare_${scenario}_${i}.png`,scenario, i ));
        fs.copyFileSync('./index.css', `./results/${scenario}/index.css`);

    }


    console.log('------------------------------------------------------------------------------------')
    console.log("Execution finished. Check the report under the results folder")
    return resultInfo;  
  }
(async ()=>console.log(await executeTest()))();

function stepScenario(before, after, compare, scenario, step){
    return `<div class=" browser" id="test0">
    <div class=" btitle">
        <h2>Step: ${scenario}_step_${step}</h2>
    </div>
    <div class="imgline">
      <div class="imgcontainer">
        <span class="imgname">Ghost 3.3.0</span>
        <img class="img2" src="${before}" id="refImage" label="Ghost 3.3.0">
      </div>
      <div class="imgcontainer">
        <span class="imgname">Ghost 3.42.5</span>
        <img class="img2" src="${after}" id="testImage" label="Ghost 3.42.5">
      </div>
    </div>
    <div class="imgline">
      <div class="imgcontainer">
        <span class="imgname">Differences</span>
        <img class="imgfull" src="${compare}" id="diffImage" label="Diff">
      </div>
    </div>
  </div>`
}

function createReport(before, after, compare, scenario, step){
    return `
    <html>
        <head>
            <title> VRT Report </title>
            <link href="index.css" type="text/css" rel="stylesheet">
        </head>
        <body>
            <h1>Report for 
                 <a href="${config.url}"> ${config.url}</a>
            </h1>
            <p>Scenario: ${scenario}</p>
            <div id="visualizer">
                ${stepScenario(before, after, compare, scenario, step)}
            </div>
        </body>
    </html>`
}