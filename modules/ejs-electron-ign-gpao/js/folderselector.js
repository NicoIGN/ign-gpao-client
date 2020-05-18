{
     let myName = document.currentScript.getAttribute('name');

     let  asyncBtn  = document.querySelector('#'+myName);
     let replyField = document.querySelector('#folder-selector-content-'+myName);
     let onButtonClick = function() {
         const { dialog, currentWindow } = require('electron').remote;

         let dialogOptions = {
           title: "Choisir un dossier:",
           properties: ['openDirectory','promptToCreate']
         };
         dialog.showOpenDialog( currentWindow, dialogOptions).then(result => {
         if(result.canceled == false) {
              replyField.value = result.filePaths[0];
          }
         }).catch(err => {
           console.log(err)
         })
     };
     asyncBtn.addEventListener("click", onButtonClick);
}