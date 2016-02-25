$(function() {

	$("#customerName").blur(function() {
		var name = $("#customerName").val();

		name = prompt("Is your name entered correctly?", name);
		$("#customerName").val(name);
	});

	$("#submitBtn").click(function() {

		var name = $("#customerName").val();
		var location = $("#location").val();
		var paymentMode = $('input[name=paymentMode]:checked').val();

		var offers = null;
		if ($("#checkCoupon").prop("checked")) {
			if ($("#checkPoint").prop("checked")) {
				offers = "Coupon & Points";
			} else {
				offers = "Coupon";
			}
		} else if ($("#checkPoint").prop("checked")) {
			offers = "Points";
		} else {
			offers = "None";
		}

		// console.log("Name : " + name);
		// console.log("Location : " + location);
		// console.log("Payment Mode : " + paymentMode);
		// console.log("Offers : " + offers);

		displayData(name, location, paymentMode, offers);
	});

});

function displayData(name, location, paymentMode, offers) {

	alert("Name : " + name + "\nLocation : " + location + "\nPayment Mode : "
			+ paymentMode + "\nOffers : " + offers);
}