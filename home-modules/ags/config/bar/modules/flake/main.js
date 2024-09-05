export function FlakeModule() {
  return Widget.Button({
    class_name: 'FlakeModule',
    on_clicked: () => Utils.execAsync(['bash', '-c', 'wallpaperScript']),
    child: Widget.Label({
      cursor: "pointer",
      label: ' ',
      css: 'font-size: 23px'
    }),
  })
}
