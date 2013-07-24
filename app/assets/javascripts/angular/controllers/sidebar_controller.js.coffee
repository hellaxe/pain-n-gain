png.controller('SidebarController', ['$scope','$http', ($scope, $http) ->
  $http.get('/users/current').success (data) ->
    $scope.user = data
  $scope.count = 0

  $scope.onLoading = () ->
    $scope.count += 1
    console.log "hey how #{$scope.count}"
])