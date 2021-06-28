const { shell } = require("electron");
const { saveText, openText } = require("./contollers");

const menu = [
  {
    label: "Edit",
    submenu: [
      {
        label: "Save",
        accelerator: "CmdOrCtrl+S",
        click() {
          saveText();
        }
      },
      {
        label: "Oepn",
        accelerator: "CmdOrCtrl+O",
        click() {
          openText();
        }
      },
      { role: "undo" },
      { role: "redo" },
      { type: "separator" },
      { role: "cut" },
      { role: "copy" },
      { role: "paste" },
      { role: "pasteandmatchstyle" },
      { role: "delete" },
      { role: "selectall" }
    ]
  },
  {
    label: "View",
    submenu: [
      {
        label: "Larger",
        role: "zoomin"
      },
      {
        label: "Smaller",
        role: "zoomout"
      },
      {
        label: "Reset size",
        role: "resetzoom"
      },
      { type: "separator" }
    ]
  },
  {
    role: "window",
    submenu: [
      {
        lebel: "Full/Small",
        role: "togglefullscreen"
      },
      { role: "Minimize" },
      { role: "close" }
    ]
  },
  {
    role: "help",
    submenu: [
      {
        label: "Learn More",
        click() {
          shell.openExternal("https://github.com/hgs0426/electron");
        }
      }
    ]
  }
];

module.exports = menu;