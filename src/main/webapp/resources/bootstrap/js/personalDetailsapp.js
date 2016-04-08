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

function validate() {
    if ($("#fatherName").val() == null || $("#fatherName").val() == "" || $("#fatherName").val() == undefined) {
        alert("Please enter Father's name");
        return false;
    }
    
    if ($("#motherName").val() == null || $("#motherName").val() == "" || $("#motherName").val() == undefined) {
        alert("Please enter Mother's name");
        return false;
    }
    
    {
    	var genders = document.getElementsByName("gender");
        if (genders[0].checked == false && genders[1].checked == false) {
            alert("Please select your gender");
            return false;
        }
    }
    
    if ($("#dob").val() == null || $("#dob").val() == "" || $("#dob").val() == undefined) {
        alert("Please select your date of birth");
        return false;
    }
    
    if ($("#age").val() < 18) {
        alert("Age is not within allowed range");
        return false;
    }
    
    {
    	var pc = document.getElementsByName("handicap");
        if (pc[0].checked == false && pc[1].checked == false) {
            alert("Please select a value in physically challenged caterogy");
            return false;
        }
    }
    
    {
    	var cast = document.getElementsByName("studentCast");
        if (cast[0].checked == false && cast[1].checked == false && cast[2].checked == false && cast[3].checked == false) {
            alert("Please select your cast");
            return false;
        }
    }
    
    if ($("#adl1").val() == null || $("#adl1").val() == "" || $("#adl1").val() == undefined) {
        alert("Please enter address");
        return false;
    }
    
    if ($("#pin").val() == null || $("#pin").val() == "" || $("#pin").val() == undefined) {
        alert("Please enter PIN code");
        return false;
    }
    
    if($("#pin").val() < 100000 || $("#pin").val() > 999999){
    	alert("Please enter a valid PIN");
    	return false;
    }
    
    if ($("#district").val() == null || $("#district").val() == "" || $("#district").val() == undefined) {
        alert("Please enter District");
        return false;
    }
    
    if ($("#state").val() == null || $("#state").val() == "" || $("#state").val() == undefined) {
        alert("Please enter State");
        return false;
    }

}

function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}