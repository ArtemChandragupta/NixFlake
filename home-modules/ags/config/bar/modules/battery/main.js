const battery = await Service.import("battery")

function SecToHourAndMin(seconds) {
  var minutesRaw = Math.floor(seconds / 60)
  var minutes = minutesRaw % 60
  var hours = Math.floor(minutesRaw / 60)
  return `${hours}:${minutes}`
}

function capacity(v) {
  var percent = Math.floor(v)
  return `${percent}%`
}

export function BatteryModule() {

  const icon = battery.bind("percent").as(p => `battery-level-${Math.floor(p / 10) * 10}-symbolic`)

  return Widget.Box({
    class_name: battery.bind('charging').transform(p => {
      if (p) {
        return 'BatteryModule_charging'
      } else {
        return 'BatteryModule_normal'
      }
    }),

    children: [
      Widget.Icon({
        icon: icon,
        visible: battery.bind('charging').transform(p => {
          if (p) {
            return false
          } else {
            return true
          }
        }),
      }),
      Widget.Label({
        label: '󱐋',
        visible: battery.bind('charging'),
      }),
      Widget.Label({
        label: battery.bind('percent').as(v => ` ${capacity(v)} `)
      }),
      Widget.Label({
        label: battery.bind('time-remaining').as(v => `${SecToHourAndMin(v)}`)
      }),
    ],
  })
}
