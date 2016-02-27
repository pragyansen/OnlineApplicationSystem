$(document).ready(function() {
	$('#dobDatePicker').datepicker({
		format: "dd/mm/yyyy",
        autoclose: true,
//        todayHighlight: true,
        startDate: new Date(1990,01,01),
        endDate: new Date(2010,12,31)
	});
});
$("#dob").change(function(){
	if($("#dob").val()!=undefined && $("#dob").val()!=null && $("#dob").val()!=""){
		var _dob = $("#dob").val().split("/");
	    var _dobDate = new Date(_dob[2], _dob[1] - 1, _dob[0]);
	    var _age = Math.floor((new Date() - _dobDate)/365/24/60/60/1000);
		$("#age").val(_age);
	}
});