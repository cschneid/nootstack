angular.module("app").factory "LocationService", ($q, $location, StackService) ->
  update = ->
    names = _(StackService.stack).map((x)-> x.name)
    names.sort
    $location.hash(names)

  load = ->
    names = $location.hash()
    if ! _.isArray(names)
      names = names.split(",")
    _(names).each (name) ->
      StackService.add(name)

  return {
    update: update,
    load: load
  }

