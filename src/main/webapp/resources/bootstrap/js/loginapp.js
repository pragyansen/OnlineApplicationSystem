/*
var loginApp = angular.module('loginApp', []);

loginApp.controller('loginControler', function($scope) {

    $scope.signInFlag = true;

    $scope.showSignUpMdl = function(){
    	 $scope.signInFlag = false;
    };

    $scope.showSignIn = function(){
    	$scope.signInFlag = true;
    };

});
 */

$(document).ready(function(){
	$("#forgrtPassDiv").hide();
});
$("#forgrtPassBtn").click(function(){
	$("#forgrtPassDiv").toggle(500);
});

//Forget password ajax calls

$('#forgetPassSubmitBtn').click(function(){

	var emailPatt = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var numPatt = /^[0]?[789]\d{9}$/;
	var id = $('#forgetPassInput').val();
	var path;
	$('#forgotPasswordSuccess').hide();
	$('#forgotPasswordFailure').hide();
	$('#invalidInput').hide();
	if(emailPatt.test(id)){
		path='email';
	} else if(numPatt.test(id)){
		path = 'phone';
	} else {
		$('#invalidInput').show();
		$('#forgetPassInput').val('');
		return;
	}
	$('#loginError').hide();
	$.ajax({
		type : 'POST',
		async : true,
		url : 'forgetPass/' + path,
		headers : {
			'X-CSRF-TOKEN':token,
			'Content-Type':'application/json'
		},
		data : JSON.stringify({id : id}),
		success: function(response){
			$('#forgetPassInput').val('');
			$('#forgotPasswordSuccess').show();
		},
		statusCode : {
			404: function(response){
				$('#forgetPassInput').val('');
				$('#forgotPasswordFailure').show();
			}
		}
	});
});
