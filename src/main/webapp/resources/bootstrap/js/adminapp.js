function drawChart(){
	Morris.Donut({
		element: 'statusChart',
		data: [
		       {label: "Personal Details", value: 12},
		       {label: "Educational Detais", value: 30},
		       {label: "Corse Selection", value: 20},
		       {label: "Payment Received", value: 30}
		       ],
//		       colors: ["#ff3333", "#6666ff", "#ffff33"]
	});
	Morris.Donut({
		element: 'subjectChart',
		data: [
		       {label: "Math", value: 50},
		       {label: "Computer Sc.", value: 10},
		       {label: "Physics", value: 10},
		       {label: "Chemistry", value: 50},
		       {label: "Botany", value: 10},
		       {label: "Pass", value: 0}
		       ],
//		       colors: ["#ff3333", "#6666ff", "#ffff33"]
	});
}

$( document ).ready(function() {
	drawChart();

});

$(window).resize(function() {
	drawChart();
});
