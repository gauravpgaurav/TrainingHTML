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

		if (name != "") {
			displayData(name, location, paymentMode, offers);
		} else {
			alert("Enter Name Please !");
		}
	});

});

function displayData(name, location, paymentMode, offers) {

	alert("Name : " + name + "\nLocation : " + location + "\nPayment Mode : "
			+ paymentMode + "\nOffers : " + offers);

	alert("Thank You For Confirming !");
    
    window.open("Assignment2.html");
}