function init() {

	var item = {
		"itemName" : "TV",
		"itemImage" : "images/tv.png",
		showItem : function() {
			var ele = document.getElementById("itemName");
			var img = document.getElementById("pict");
			ele.innerHTML = this.itemName;
			img.src = this.itemImage;
		}
	};

	console.log("Init Called");
	console.log(item.itemName);
	item.showItem();
	// console.log(item.prototype);
}

(function() {
	init();
})();