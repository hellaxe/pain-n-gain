png.factory('Users', ['$resource',($resource) ->
  $resource('/users.json', {}, {query: {method: 'GET', params: {}, isArray: true} } )           
])

png.factory('User', ['$resource',($resource) ->
  $resource('/users/:id', { id: "@id" }, { update: {method: 'PUT' } } )
])