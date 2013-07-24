@png = angular.module('png', ['ngResource'])
png.config(['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
  $routeProvider.
           when('/', {templateUrl: '/assets/home/index.html', controller: 'HomeController'}).
           when('/users', {templateUrl: '/assets/users/index.html', controller: 'UserIndexController'}).
           when('/contact', {template: 'contact us!'}).
           otherwise(redirectTo: '/')
])