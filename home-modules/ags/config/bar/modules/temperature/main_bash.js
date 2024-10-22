const getTemperature = Variable("", {
	poll: [
		10000,
		`bash -c "sensors 2>/dev/null | grep 'Tctl' | awk '{print $2}'"`,
		(out) => parseFloat(out).toFixed(0),
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
