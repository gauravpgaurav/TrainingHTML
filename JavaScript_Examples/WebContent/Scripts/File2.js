var element = document.getElementById("btn1");
element.addEventListener("click", function() {
	if (element) {
		window.alert("Hello from Event Handler !");
		console.log("Button Clicked");
	}
});

element.addEventListener("click", displayMsg);

function displayMsg() {
	window.alert("Oh you clicked !");
}