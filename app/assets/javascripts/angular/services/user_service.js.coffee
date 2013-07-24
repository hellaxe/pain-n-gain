png.factory('User', ['$resource',($resource) ->
  $resource('/users.json', {}, {query: {method: 'GET', params: {}, isArray: true} } )           
])