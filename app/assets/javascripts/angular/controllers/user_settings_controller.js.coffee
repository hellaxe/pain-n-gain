png.controller('UserSettingsController', [ '$scope', '$window', 'User', ($scope, $window, User) ->
  $scope.hasErrors = false
  $scope.clientErrors = false
  $scope.errors = []
  $scope.user = User.get({id: 'current'})
  $scope.$watch('settingsForm.username.$invalid',(newVal, oldVal) ->
    $scope.clientErrors = newVal
    if(newVal == true)
      $scope.errors.push("Username can't be blank")
    else
      $scope.errors.pop()
  )
  $scope.isUpdate = false
  $scope.languages = [
    { name: 'ru', definition: 'Russian', id: 1}
    { name: 'en', definition: 'English', id: 2}
    { name: 'be', definition: 'Belorussian', id: 3}
  ]

  $scope.saveMainSettings = () ->
    if($scope.settingsForm.$valid)
      $scope.isUpdate = true
      User.update($scope.user, () ->
        $window.location.reload()
      , (errorData, something) ->
        $scope.settingsForm.errors = errorData.data
        $scope.isUpdate = false
        $scope.hasErrors = true
        $scope.errors = []
        $.each(errorData.data,(k,v) ->
          $scope.errors.push("#{k} #{v}")
        )
      )
])