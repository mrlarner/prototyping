angular.module("helo", [
  "ui.router"
])
.config([
  "$stateProvider"
  "$urlRouterProvider"
  ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise("/helo")
    $stateProvider
    .state("helo"
      url: "/helo"
      controller: "HiCtrl"
      templateUrl: "/templates/hello.html"
    )
])

angular.module("helo")
.controller( "HiCtrl", [ '$scope',
  ($scope) ->
    $scope.message = "hinitial"
    console.log $scope.message
])
