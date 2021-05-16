const compareImages = require("resemblejs/compareImages")
const config = require("./config.json");
const fs = require('fs');
const path = require('path');
const pathRead = './Screenshots';
const { viewportHeight, viewportWidth, browsers, options } = config;
let resultInfo = {}
let htmlData = ''
const { promisify } = require('util');
const { resolve } = require('path');
const readdir = promisify(fs.readdir);
const stat = promisify(fs.stat);

async function executeTest(){

    let datetime = new Date().toISOString().replace(/:/g,".");
    let pathFolders = [];
    const items = await getFiles(pathRead)
        .then(files => this.filesImage = files)
        .catch(e => console.error(e));



    for (let i = 0; i < items.length; i++) {
        var currentNumber = items[i];
        if (fs.lstatSync(currentNumber).isFile() && !currentNumber.includes('undefined') && currentNumber !== undefined ) {
            pathFolders.push(currentNumber);
        }
    }


    for (let i = 0; i < items.length; i++) {
        var currentNumber = items[i];
        if (fs.lstatSync(currentNumber).isFile() && !currentNumber.includes('undefined') && currentNumber !== undefined ) {
            pathFolders.push(currentNumber);
        }
    }

    let itemCompared= [];
    for (let i = 0; i<pathFolders.length; i++) {
        var pathName = pathFolders[i];
        var arraySubFolder = pathName.replace(/\\/g,"/").split('/');
        const pathsToCompare= filterByName(arraySubFolder[arraySubFolder.length-1], pathFolders);

        if(!itemCompared.includes(arraySubFolder[arraySubFolder.length-1])) {
            for (let j = 0; j<pathsToCompare.length; j++) {
                itemCompared.push(pathsToCompare[0]);
                itemCompared.push(pathsToCompare[1]);
                if (!fs.existsSync(`./results/${datetime}`)){
                    fs.mkdirSync(`./results/${datetime}`, { recursive: true });
                }
                await comparesImagesWithResemblejs(pathsToCompare[0], pathsToCompare[1], arraySubFolder[arraySubFolder.length-1].replace('.png', ''), datetime);
                break;
            }
        }
    }

    fs.writeFileSync(`./results/${datetime}/report.html`, createReport(datetime, resultInfo));
    fs.copyFileSync('./index.css', `./results/${datetime}/index.css`);

}
(async ()=> await executeTest())();


async function comparesImagesWithResemblejs(pathBefore, pathAfter, nameTest, datetime) {
    const data = await compareImages(
        fs.readFileSync(pathBefore),
        fs.readFileSync(pathAfter),
        options
    );
    resultInfo['chromium'] = {
        isSameDimensions: data.isSameDimensions,
        dimensionDifference: data.dimensionDifference,
        rawMisMatchPercentage: data.rawMisMatchPercentage,
        misMatchPercentage: data.misMatchPercentage,
        diffBounds: data.diffBounds,
        analysisTime: data.analysisTime
    }

    if (!fs.existsSync(`./results/${datetime}/compare-${nameTest}.png`)){
        htmlData = htmlData + browser(pathBefore, pathAfter, `./compare-${nameTest}.png` );

        fs.writeFileSync(`./results/${datetime}/compare-${nameTest}.png`, data.getBuffer());
    }

}

function filterByName(name, data) {
    const items = data.filter(item =>  item.includes(name));
    return items;
}

async function getFiles(dir) {
    const subdirs = await readdir(dir);
    const files = await Promise.all(subdirs.map(async (subdir) => {
        const res = resolve(dir, subdir);
        return (await stat(res)).isDirectory() ? getFiles(res) : res;
    }));
    return files.reduce((a, f) => a.concat(f), []);
}

function browser(before, after, item){


    return `<div class=" browser" id="test0">

  <div class="imgline">
    <div class="imgcontainer">
      <span class="imgname">Reference</span>
      <img class="img2" src="${before}" id="refImage" label="Reference">
    </div>
    <div class="imgcontainer">
      <span class="imgname">Test</span>
      <img class="img2" src="${after}" id="testImage" label="Test">
    </div>
  </div>
  <div class="imgline">
    <div class="imgcontainer">
      <span class="imgname">Diff</span>
      <img class="imgfull" src="${item}" id="diffImage" label="Diff">
    </div>
  </div>
</div>`

}

function createReport(datetime, resInfo){
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
          <p>Executed: ${datetime}</p>
           <div class=" btitle">
                  <h2>Browser: chrome</h2>
                  <p>Data: ${JSON.stringify(resInfo['chromium'])}</p>
           </div>
          <div id="visualizer">
              ${config.browsers.map(it => htmlData)}
          </div>
      </body>
  </html>`
}
