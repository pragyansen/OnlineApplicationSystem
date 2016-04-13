$(document).ready(function(){
    $(".marks-group-10").keyup(function(){
    	var temp = parseInt(parseInt($("#marks10").val()) / parseInt($("#totalMarks10").val()) * 10000);
        var _val = temp / 100;
        $("#percentage10").val(_val);
    });
    
    $(".marks-group-12").keyup(function(){
        var temp = parseInt(parseInt($("#marks12").val()) / parseInt($("#totalMarks12").val()) * 10000);
        var _val = temp / 100;
        $("#percentage12").val(_val);
    });
});


function validate() {
    if ($("#institution10").val() == null || $("#institution10").val() == "" || $("#institution10").val() == undefined) {
        alert("Please enter Institution10");
        return false;
    }
    
    if ($("#yearOfPassing10").val() == null || $("#yearOfPassing10").val() == "" || $("#yearOfPassing10").val() == undefined) {
        alert("Please enter Year-of-Passing-10");
        return false;
    }
    
    if($("#yearOfPassing10").val() < 2000 || $("#yearOfPassing10").val() > 2014){
    	alert("Please enter a valid Year-of-Passing-10");
    	return false;
    }
    
    if ($("#marks10").val() == null || $("#marks10").val() == "" || $("#marks10").val() == undefined) {
        alert("Please enter Marks-10");
        return false;
    }
    
    if($("#marks10").val() < 0){
    	alert("Please enter a valid Marks-10");
    	return false;
    }
    
    if ($("#totalMarks10").val() == null || $("#totalMarks10").val() == "" || $("#totalMarks10").val() == undefined) {
        alert("Please enter Total-Marks-10");
        return false;
    }
    
    if($("#totalMarks10").val() < 0 || $("#totalMarks10").val() < $("#marks10").val() ){
    	alert("Please enter a valid Total-Marks-10");
    	return false;
    }
    
    
    
    
    
    
    if ($("#institution12").val() == null || $("#institution12").val() == "" || $("#institution12").val() == undefined) {
        alert("Please enter Institution12");
        return false;
    }
    
    if ($("#yearOfPassing12").val() == null || $("#yearOfPassing12").val() == "" || $("#yearOfPassing12").val() == undefined) {
        alert("Please enter Year-of-Passing-12");
        return false;
    }
    
    if($("#yearOfPassing12").val() < 2000 || $("#yearOfPassing12").val() > 2016){
    	alert("Please enter a valid Year-of-Passing-12");
    	return false;
    }
    
    if ($("#marks12").val() == null || $("#marks12").val() == "" || $("#marks12").val() == undefined) {
        alert("Please enter Marks-12");
        return false;
    }
    
    if($("#marks12").val() < 0){
    	alert("Please enter a valid Marks-12");
    	return false;
    }
    
    if ($("#totalMarks12").val() == null || $("#totalMarks12").val() == "" || $("#totalMarks12").val() == undefined) {
        alert("Please enter Total-Marks-12");
        return false;
    }
    
    if($("#totalMarks12").val() < 0 || $("#totalMarks12").val() < $("#marks12").val() ){
    	alert("Please enter a valid Total-Marks-12");
    	return false;
    }
    
    if ($("#subject1code").val() == null || $("#subject1code").val() == "" || $("#subject1code").val() == undefined) {
        alert("Please select subject1");
        return false;
    }
    
    if ($("#subject1marks").val() == null || $("#subject1marks").val() == "" || $("#subject1marks").val() == undefined) {
        alert("Please enter Subject1marks");
        return false;
    }
    
    if($("#subject1marks").val() < 0){
    	alert("Please enter a valid Subject1-mark");
    	return false;
    }
    
    if ($("#subject1total").val() == null || $("#subject1total").val() == "" || $("#subject1total").val() == undefined) {
        alert("Please enter Subject1total");
        return false;
    }
    
    if(parseInt($("#subject1total").val()) < parseInt($("#subject1marks").val()) ){
    	alert("Please enter a valid Subject-1-total");
    	return false;
    }
    
    if ($("#subject2code").val() == null || $("#subject2code").val() == "" || $("#subject2code").val() == undefined) {
        alert("Please select subject2");
        return false;
    }
    
    if ($("#subject2marks").val() == null || $("#subject2marks").val() == "" || $("#subject2marks").val() == undefined) {
        alert("Please enter Subject2marks");
        return false;
    }
    
    if($("#subject2marks").val() < 0){
    	alert("Please enter a valid Subject2-mark");
    	return false;
    }
    
    if ($("#subject2total").val() == null || $("#subject2total").val() == "" || $("#subject2total").val() == undefined) {
        alert("Please enter Subject2total");
        return false;
    }
    
    if(parseInt($("#subject2total").val()) < parseInt($("#subject2marks").val()) ){
    	alert("Please enter a valid Subject-2-total");
    	return false;
    }
    
    if ($("#subject3code").val() == null || $("#subject3code").val() == "" || $("#subject3code").val() == undefined) {
        alert("Please select subject3");
        return false;
    }
    
    if ($("#subject3marks").val() == null || $("#subject3marks").val() == "" || $("#subject3marks").val() == undefined) {
        alert("Please enter Subject3marks");
        return false;
    }
    
    if($("#subject3marks").val() < 0){
    	alert("Please enter a valid Subject3-mark");
    	return false;
    }
    
    if ($("#subject3total").val() == null || $("#subject3total").val() == "" || $("#subject3total").val() == undefined) {
        alert("Please enter Subject3total");
        return false;
    }
    
    if(parseInt($("#subject3total").val()) < parseInt($("#subject3marks").val()) ){
    	alert("Please enter a valid Subject-3-total");
    	return false;
    }
    
    if ($("#subject4code").val() == null || $("#subject4code").val() == "" || $("#subject4code").val() == undefined) {
        alert("Please select subject4");
        return false;
    }
    
    if ($("#subject4marks").val() == null || $("#subject4marks").val() == "" || $("#subject4marks").val() == undefined) {
        alert("Please enter Subject4marks");
        return false;
    }
    
    if($("#subject4marks").val() < 0){
    	alert("Please enter a valid Subject4-mark");
    	return false;
    }
    
    if ($("#subject4total").val() == null || $("#subject4total").val() == "" || $("#subject4total").val() == undefined) {
        alert("Please enter Subject4total");
        return false;
    }
    
    if(parseInt($("#subject4total").val()) < parseInt($("#subject4marks").val()) ){
    	alert("Please enter a valid Subject-4-total");
    	return false;
    }
    
    if ($("#subject5code").val() == null || $("#subject5code").val() == "" || $("#subject5code").val() == undefined) {
        alert("Please select subject5");
        return false;
    }
    
    if ($("#subject5marks").val() == null || $("#subject5marks").val() == "" || $("#subject5marks").val() == undefined) {
        alert("Please enter Subject5marks");
        return false;
    }
    
    if($("#subject5marks").val() < 0){
    	alert("Please enter a valid Subject5-mark");
    	return false;
    }
    
    if ($("#subject5total").val() == null || $("#subject5total").val() == "" || $("#subject5total").val() == undefined) {
        alert("Please enter Subject5total");
        return false;
    }
    
    if(parseInt($("#subject5total").val()) < parseInt($("#subject5marks").val()) ){
    	alert("Please enter a valid Subject-5-total");
    	return false;
    }
    
    var flag = true;
    var hash = Object.create(null),
    result = [].some.call(document.getElementsByClassName('subjects'), function(inp) {
    	if(hash[inp.value])
       	{
    		alert("Please select 5 unique subjects");
    		flag = false;
    		return true;
    	}
       hash[inp.value] = true;
    });
    return flag;
    
    
}

function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}