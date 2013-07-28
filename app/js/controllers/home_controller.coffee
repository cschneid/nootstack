angular.module("app").controller 'HomeController', ($scope, NootBuilder, AllNootsService) ->
  $scope.stack = {}
  $scope.allnoots = AllNootsService.noots

  $scope.add = (noot) ->
    $scope.stack[noot] = NootBuilder.noot_from_name(noot)

  $scope.remove = (noot) ->
    delete $scope.stack[noot]
