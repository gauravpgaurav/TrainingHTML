// Function 1
function normalFunction() {
	answer.innerHTML = "I am a Normal Function";
}

// Function 2
function withArgFunction(name) {
	answer.innerHTML = "Welcome to JavaScript Functions " + name;
}

// Function 3
function returnFunction(name) {
	return "Welcome to JavaScript Functions " + name;
}

// Function 4
function takeFunctionAsArg(func) {
	var recvd = func;
	console.log(recvd);
	// recvd("qwerty");
	recvd(txt.value);
}

// Function 5
function returningFunction() {

	return {
		addClass : function() {
			answer.innerHTML = "Add Class Called ";
		},
		removeClass : function() {
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
	var txt = document.getElementById("txt");
	var answer = document.getElementById("answer");

	// Button 1
	btn1.addEventListener("click", normalFunction);

	// Button 2
	btn2.addEventListener("click", function() {

		withArgFunction(txt.value);

	});

	// Button 3
	btn3.addEventListener("click", function() {

		answer.innerHTML = returnFunction(txt.value);

	});

	// Button 4
	btn4.addEventListener("click", function() {

		takeFunctionAsArg(withArgFunction);

	});

	// Button 5
	btn5.addEventListener("click", function() {

		var funcList = returningFunction();
		funcList.addClass();
		funcList.removeClass();

	});

}