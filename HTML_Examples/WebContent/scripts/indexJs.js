function stopCopy(event) {

	event.preventDefault();
	alert('Copy Function Not Allowed !');
}

function stopPaste(event) {

	event.preventDefault();
	alert('Paste Function Not Allowed !');
}

function stopRightClick(event) {

	event.preventDefault();
	alert('Right Click Function Not Allowed !');
}

var userName = document.getElementById("userName");
userName.addEventListener("copy", stopCopy);
userName.addEventListener("paste", stopPaste);
document.addEventListener("contextmenu", stopRightClick);
