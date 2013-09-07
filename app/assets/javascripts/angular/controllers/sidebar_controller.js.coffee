png.controller('SidebarController', ['$scope','$http', ($scope, $http) ->
  $http.get('/users/current').success (data) ->
    $scope.user = data
  $scope.count = 0

  $scope.onClick = () ->
    $scope.count += 1
    console.log("scope #{$scope.count}")
])