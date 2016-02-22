function init() {

	var item = {
		"itemName" : "TV",
		"itemImage" : "images/tv.jpg"
	};

	console.log("Init Called");
	console.log(item.itemName);
	// console.log(item.prototype);
}

(function() {
	init();
})();