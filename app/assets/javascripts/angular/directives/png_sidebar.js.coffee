png.directive('pngSidebar', () ->

  {
    restrict: 'EA'
    transclude: true
    scope: {}
    controller: 'SidebarController'
    templateUrl: 'assets/sidebar/show.html.haml'
    replace: false
  }

)