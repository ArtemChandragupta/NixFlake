import { applauncher } from "./applauncher.js"
import { Bar } from "./bar.js"

App.config({
  style: "./style.css",
  windows: [
    Bar(),
    applauncher
  ],
})

export { }
