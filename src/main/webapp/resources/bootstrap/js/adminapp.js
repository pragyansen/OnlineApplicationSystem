function drawChart(elementId, chartData){
	//console.log(elementId);
	//console.log(chartData);
	Morris.Donut({
		element: elementId,
		data: chartData,
//		       colors: ["#ff3333", "#6666ff", "#ffff33"]
	});/*
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
	});*/
}

$( document ).ready(function() {
	
	var statusChartData = [];
	var subjectChartData = [];
	
	$.ajax({
		type : 'GET',
		async : true,
		url : '../ajax/chartData',
		headers : {
			'Content-Type':'application/json'
		},
		success: function(response){
			statusChartData = response[0];
			subjectChartData = response[1];
			drawChart(statusChart, statusChartData);
			drawChart(subjectChart, subjectChartData);
			//alert(response);
		}
	});
	$(window).resize(function() {
		drawChart(statusChart, statusChartData);
		drawChart(subjectChart, subjectChartData);
	});
});


