png.controller('UserIndexController', ['$scope','User',($scope, User) ->
  $scope.users = User.query()
  $scope.message = () ->
    console.log "hello"
])