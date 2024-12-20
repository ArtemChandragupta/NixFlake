const getTemperature = Variable("", {
	poll: [
		10000,
		`bash -c "sensors 2>/dev/null | grep 'Tctl' | awk '{print $2}'"`,
		(out) => parseFloat(out).toFixed(0),
	],
});

export function TemperatureModule() {
	
	const status = 
	[
		[50, "critical"],
		[0,  "normal"],
	].find(
		([threshold]) => threshold <= getTemperature.value
	)?.[1];
	
	return Widget.Box({
		className: `TemperatureModule_${status}`,
		children : [
			Widget.Label({
				label: `${status}`
			}),
			Widget.Label({
				label: getTemperature.bind().as(v => `󰔐 ${v}°C`),
			})
		]
	})
}
