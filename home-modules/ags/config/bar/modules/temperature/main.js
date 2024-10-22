const getTemperature = Variable("", {
	poll: [
		10000,
		`nu -c "sys temp | where unit ends-with Tctl | get temp.0 | math round"`,
	],
});

export function TemperatureModule() {
	return Widget.Label({
		className: getTemperature.bind().transform(p => {
			if (p >= 50) {
				return 'TemperatureModule_critical'
			} else {
				return 'TemperatureModule_normal'
			}
		}),
		label: getTemperature.bind().as(v => `󰔐 ${v}°C`),
	})
}
