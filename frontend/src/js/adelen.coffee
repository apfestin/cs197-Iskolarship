momentum = angular.module "Momentum.controllers", []

momentum.controller "ViewStudentController", ['$scope', '$http', ($scope, $http) ->
	$scope.getDetails = ->
		$http.get("/api/getstudentdetails/#{$scope.data.personid}")
		.success (response) ->
			$scope.data.lastname = response
			alert "asasA"
		.error (response) ->
			alert response
			alert "There are no men"
		
]
