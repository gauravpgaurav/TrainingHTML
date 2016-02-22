var element = document.getElementById("btn1");
element.addEventListener("click", function() {
	if (element) {
		window.alert("Hello from Event Handler !");
		console.log("Button Clicked");
	}
});
