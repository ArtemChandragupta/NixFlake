import { FlakeModule } from "./modules/flake/main.js"
// import { TrayModule } from "./modules/tray/main.js"
// import { WorkspacesModule } from "./modules/workspace/main.js"
import { ClockModule } from "./modules/clock/main.js"
import { BatteryModule } from "./modules/battery/main.js"
import { CpuModule } from "./modules/cpu/main.js"
import { TemperatureModule } from "./modules/temperature/main.js"
import { MemoryModule } from "./modules/memory/main.js"
import { BacklightModule } from "./modules/backlight/main.js"
import { VolumeModule } from "./modules/volume/main.js"


function Left(monitor) {
  return Widget.Box({
    spacing: 8,
    children: [
      FlakeModule(),
      // TrayModule(),
      // WorkspacesModule(monitor),
    ],
  })
}

function Center() {
  return Widget.Box({
    spacing: 8,
    children: [
      ClockModule(),
    ],
  })
}

function Right() {
  return Widget.Box({
    hpack: "end",
    spacing: 8,
    children: [
      BatteryModule(),
      CpuModule(),
      TemperatureModule(),
      MemoryModule(),
      BacklightModule(),
      VolumeModule(),
    ],
  })
}

const hyprlandMonitors = Utils.exec(
  `/bin/sh -c "hyprctl monitors | grep -o '(ID [0-9]*' | awk '{print $2}' | sort"`
).split('\n').map(Number);

// hyprctl monitors
// | find Monitor
// | parse '{device} {name} {id}'
// | get id
// | str substring 4.4

const getHyprlandMonitor = monitor => {
  if (monitor >= hyprlandMonitors.length) {
    return 0;
  }
  return hyprlandMonitors[monitor];
};

export function Bar(monitor = 0) {
  return Widget.Window({
    name: `bar-${monitor}`,
    class_name: "bar",
    monitor,
    anchor: ["top", "left", "right"],
    exclusivity: "ignore",
    margins: [5, 10, -5, 10],
    child: Widget.CenterBox({
      start_widget: Left(getHyprlandMonitor(monitor)),
      center_widget: Center(),
      end_widget: Right(),
    }),
  })
}
