const { dialog, ipcMain } = require("electron");
const fs = require("fs");

const saveText = () => {
  const saveFile = filePath => {
    win.webContents.send("reqFileData", null);
    ipcMain.on("sendContents", (event, contents) => {
      // console.log(contents);
      fs.writeFile(filePath, contents, err => {
        if (err) {
          alert("An error ocurred saving the file :" + err.message);
          return;
        }
        console.log("saved");
      });
    });
  };

  dialog.showSaveDialog(fileName => {
    if (fileName === undefined) {
      console.log("No file selected");
    } else {
      //console.log(fileName);
      saveFile(fileName);
    }
  });
};

const openText = () => {
  const readFile = filepath => {
    fs.readFile(filepath, "utf-8", (err, data) => {
      if (err) {
        alert("An error ocurred reading the file :" + err.message);
        return;
      }
      win.webContents.send("fileData", data);
    });
  };

  dialog.showOpenDialog(fileNames => {
    if (fileNames === undefined) {
      console.log("No file selected");
    } else {
      readFile(fileNames[0]);
    }
  });
};

module.exports = {
  saveText,
  openText
};