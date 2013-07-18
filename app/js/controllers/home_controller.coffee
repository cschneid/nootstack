angular.module("app").controller 'HomeController', ($scope, StackService) ->
  $scope.noot_from_name = (name) ->
    { 'name': name }

  $scope.title = "NootStacks"

  $scope.noots = [
    $scope.noot_from_name("Piracetam"),
    $scope.noot_from_name("Oxiracetam"),
    $scope.noot_from_name("Aniracetam"),
    $scope.noot_from_name("Nefiracetam"),
    $scope.noot_from_name("Pramiracetam"),
    $scope.noot_from_name("Phenylpiracetam"),
    $scope.noot_from_name("Modafinil")
  ]

  $scope.stack = StackService.getStack()

  $scope.add = (noot) ->
    StackService.add(noot)

  $scope.remove = (noot) ->
    StackService.remove(noot)

