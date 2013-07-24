@png = angular.module('png', [])
png.config(['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
  $routeProvider.when('/', {templateUrl: '/assets/home/index.html', controller: 'HomeController'}).when('/contact', {template: 'contact us!'}).otherwise(redirectTo: '/')
])