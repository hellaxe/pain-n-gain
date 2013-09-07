png.controller('UserIndexController', [ '$scope', 'User', ($scope, User) ->
  $scope.users = User.query()
])