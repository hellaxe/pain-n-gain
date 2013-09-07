@png = angular.module('png', ['ngResource'])
png.config(['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
  $routeProvider.
           when('/', {templateUrl: '/assets/home/index.html', controller: 'HomeController'}).
           when('/users', {templateUrl: '/assets/users/index.html', controller: 'UserIndexController'}).
           when('/contact', {template: 'contact us!'}).
           when('/settings', templateUrl: '/users/settings', controller: 'UserSettingsController').
           otherwise(redirectTo: '/')
])
png.config ["$httpProvider", ($httpProvider) ->
  # Inject the CSRF token
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = document.getElementsByName("csrf-token")[0].content
  # By default, angular sends "application/json, text/plain, */*" which rails
  # sees and focuses on the */* and sends html :-(
  $httpProvider.defaults.headers.common['Accept'] = "application/json"
]