(function() {
	var app = angular.module('my', {});
	app.controller('TestController', function() {
		this.value = 1;
		this.setValue = function(value){
			this.value = value;
		};
		
		this.incr = function(value){
			this.value++;
		};
	});
	
	
})();