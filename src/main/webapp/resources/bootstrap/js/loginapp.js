
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

$(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
    });
  });