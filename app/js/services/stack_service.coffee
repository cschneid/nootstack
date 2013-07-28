angular.module("app").factory "StackService", ($q, NootBuilder) ->
  @stack = {}

  getStack = =>
    return @stack

  add = (noot) =>
    return true if noot == ""
    @stack[noot] = NootBuilder.noot_from_name(noot)

  remove = (noot) =>
    delete @stack[noot]

  return {
    stack: @stack
    add: add
    remove: remove
  }

