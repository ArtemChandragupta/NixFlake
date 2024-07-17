import { applauncher } from "./applauncher/main.js"
import { Bar } from "./bar/main.js"

App.config({
  style: "./style.css",
  windows: [
    Bar(),
    applauncher
  ],
})

export { }
