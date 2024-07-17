export function FlakeModule() {
  return Widget.Button({
    class_name: 'FlakeModule',
    cursor: 'pointer',
    on_clicked: () => Utils.execAsync(['bash', '-c', 'wallpaper']),
    child: Widget.Label({
      label: ' ',
      css: 'font-size: 23px'
    }),
  })
}
