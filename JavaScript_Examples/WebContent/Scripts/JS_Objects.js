var items = [];
function init() {

	var item1 = {
		itemName : "TV",
		itemImage : "images/tv.png"
	};

	var item2 = {
		itemName : "RADIO",
		itemImage : "images/radio.jpg"
	};

	items.push(item1);
	items.push(item2);
}

function showAllItems() {
	for ( var item in items) {
		console.log(items[item].itemName);
		console.log(items[item].itemImage);
		// console.log(item.itemImage);
        var header = document.createElement("h2");
        var text = document.createTextNode(items[item].itemName);
         header.appendChild(text);
        
        var img = document.createElement("img");
        var att = document.createAttribute("src");       
        att.value = items[item].itemImage;                          
        img.setAttributeNode(att);
	}
}
(function() {
	init();
	showAllItems();
})();