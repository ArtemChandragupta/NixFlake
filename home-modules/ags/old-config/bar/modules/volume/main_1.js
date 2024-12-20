const audio = await Service.import("audio")

function GetValue(v) {
  var percent = Math.floor(v * 100)
  return `${percent}%`
}

export function VolumeModule() {
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

  return Widget.Box({
    class_name: audio.speaker.bind('is-muted').transform(p => {
      if (p) {
        return 'VolumeModule_muted'
      } else {
        return 'VolumeModule_active'
      }
    }),
    children: [
      Widget.Icon({
        icon: Utils.watch(getIcon(), audio.speaker, getIcon)
      }),
      Widget.Label({
        label: audio.speaker.bind('volume').as(v => `${GetValue(v)} `),
      }),
    ],
  })
}

