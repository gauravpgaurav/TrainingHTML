function normalFunction() {

	// alert("I am a Normal Function");
	answer.innerHTML = "I am a Normal Function";
}

function withArgFunction(name) {

	alert("Welcome to JavaScript Functions " + name);
	answer.innerHTML = "Welcome to JavaScript Functions " + name;
}

function returnFunction(name) {

	return "Welcome to JavaScript Functions " + name;
}

function takeFunctionAsArg(func) {

	var recvd = func;
	alert(recvd.show());

}

function returningFunction() {

	return {
		addClass : function() {
			// alert("Add Class Called");
			answer.innerHTML = "Add Class Called ";
		},
		removeClass : function() {
			// alert("Remove Class Called");
			answer.innerHTML += ", Remove Class Called";
		}
	};
}

(function() {
	init();
})();

function init() {
	var btn1 = document.getElementById("btn1");
	var btn2 = document.getElementById("btn2");
	var btn3 = document.getElementById("btn3");
	var btn4 = document.getElementById("btn4");
	var btn5 = document.getElementById("btn5");
	var answer = document.getElementById("answer");

	btn1.addEventListener("click", normalFunction);
	btn2.addEventListener("click", normalFunction);
	btn3.addEventListener("click", normalFunction);
	btn4.addEventListener("click", normalFunction);
	btn5.addEventListener("click", function() {
		var funcList = returningFunction();
		funcList.addClass();
		funcList.removeClass();
	});

}