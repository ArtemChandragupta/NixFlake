const hyprland = await Service.import("hyprland")
const audio = await Service.import("audio")
const battery = await Service.import("battery")
const systemtray = await Service.import("systemtray")


function SecToHourAndMin(seconds) {
  var minutesRaw = Math.floor(seconds / 60)
  var minutes = minutesRaw % 60
  var hours = Math.floor(minutesRaw / 60)
  return `${hours}:${minutes}`
}


const date = Variable("", {
  poll: [1000, 'date "+%H:%M"'],
})

function Workspaces() {
  const activeId = hyprland.active.workspace.bind("id")
  const workspaces = hyprland.bind("workspaces")
    .as(ws => ws.map(({ id }) => Widget.Button({
      on_clicked: () => hyprland.messageAsync(`dispatch workspace ${id}`),
      child: Widget.Label(`${id}`),
      class_name: activeId.as(i => `${i === id ? "focused" : ""}`),
    })))

  return Widget.Box({
    class_name: "workspaces",
    children: workspaces,
  })
}


function Clock() {
  return Widget.Button({
    class_name: "clock",
    on_clicked: () => Utils.execAsync(['bash', 'swaync-client -t -sw']),
    child: Widget.Label({ label: date.bind() }),
  })
}


function Volume() {
  const icons = {
    101: "overamplified",
    67: "high",
    34: "medium",
    1: "low",
    0: "muted",
  }

  function getIcon() {
    const icon = audio.speaker.is_muted ? 0 : [101, 67, 34, 1, 0].find(
      threshold => threshold <= audio.speaker.volume * 100)

    return `audio-volume-${icons[icon]}-symbolic`
  }

  const icon = Utils.watch(getIcon(), audio.speaker, getIcon)

  return Widget.Box({
    class_name: "volume",
    children: [
      Widget.CircularProgress({
        value: audio.speaker.bind('volume'),
        startAt: 0.75,
        rounded: false,
        css: 'min-width: 20px;'
          + 'color: #b8bb26;'
          + 'font-size: 2px;',
        child: Widget.Icon({
          icon,
          css: 'font-size: 12px',
        }),
      }),
    ],
  })
}


function BatteryLabel() {
  const value = battery.bind("percent").as(p => p > 0 ? p / 100 : 0)
  const icon = battery.bind("percent").as(p =>
    `battery-level-${Math.floor(p / 10) * 10}-symbolic`)

  return Widget.Box({
    class_name: "battery",
    visible: battery.bind("available"),
    tooltip_text: battery.bind('time-remaining').as(v => `${SecToHourAndMin(v)}`),
    children: [
      Widget.CircularProgress({
        value,
        startAt: 0.75,
        inverted: true,
        css: 'min-width: 20px;'
          + 'color: #b8bb26;'
          + 'font-size: 2px;',
        child: Widget.Icon({
          icon,
          css: 'font-size: 12px;',
        }),
      }),

    ],
  })
}


function SysTray() {
  const items = systemtray.bind("items")
    .as(items => items.map(item => Widget.Button({
      child: Widget.Icon({ icon: item.bind("icon") }),
      on_primary_click: (_, event) => item.activate(event),
      on_secondary_click: (_, event) => item.openMenu(event),
      tooltip_markup: item.bind("tooltip_markup"),
    })))

  return Widget.Box({
    class_name: "tray",
    children: items,
  })
}


function Left() {
  return Widget.Box({
    spacing: 8,
    children: [
      SysTray(),
      Workspaces(),
    ],
  })
}

function Center() {
  return Widget.Box({
    spacing: 8,
    children: [
      Clock(),
    ],
  })
}

function Right() {
  return Widget.Box({
    hpack: "end",
    spacing: 8,
    children: [
      BatteryLabel(),
      Volume(),
    ],
  })
}

function Bar(monitor = 0) {
  return Widget.Window({
    name: `bar-${monitor}`, // name has to be unique
    class_name: "bar",
    monitor,
    anchor: ["top", "left", "right"],
    exclusivity: "exclusive",
    margins: [5, 10, -5, 10],
    child: Widget.CenterBox({
      start_widget: Left(),
      center_widget: Center(),
      end_widget: Right(),
    }),
  })
}

export { Bar }
