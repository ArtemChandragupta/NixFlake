import brightness from './brightness.js';

export function BacklightModule() {
    return Widget.Box({
        class_name: "BacklightModule",
        children: [
            Widget.Label({
                label: brightness.bind('screen-value').as(v => {
                    if (v * 100 >= 65 ) {
                        return '󰃠 '
                    } else if (v * 100 >= 30) {
                        return '󰃟 '
                    } else {
                        return '󰃞 '
                    }
                })
            }),
            Widget.Label({
                label: brightness.bind('screen-value').as(v => `${Math.floor(v * 100)}%`),
            }),
        ]
    });
}
