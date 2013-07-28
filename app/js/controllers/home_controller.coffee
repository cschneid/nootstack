angular.module("app").controller 'HomeController', ($scope, $location, LocationService, StackService, NootBuilder, AllNootsService) ->
  $scope.stack = StackService.stack

  $scope.allnoots = AllNootsService.noots

  $scope.add = (noot) ->
    StackService.add(noot)
    LocationService.update()

  $scope.remove = (noot) ->
    StackService.remove(noot)
    LocationService.update()

  LocationService.load()
