function greet() {
	console.log("Hello from External");
}

function show_coords(event) {
	x = event.clientX
	y = event.clientY
	console.log("X coords: " + x + ", Y coords: " + y)
}