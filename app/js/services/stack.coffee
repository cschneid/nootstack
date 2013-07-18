angular.module("app").factory "StackService", ($q, $http) ->
  @stack = {}

  @noot_from_name = (name) ->
    { 'name': name }

  getStack = =>
    return @stack

  add = (noot) =>
    @stack[noot] = @noot_from_name(noot)

  remove = (noot) =>
    delete @stack[noot]

  return {
    getStack: getStack
    add: add
    remove: remove
  }

