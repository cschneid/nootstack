
angular.module("app").directive 'noot', () ->
  restrict: 'E'
  replace: true
  template: '
              <span ng-click="remove(noot.name)">
                <a>{{ noot.name }}<img class="icon" src="/img/icons/png/minus2.png"></a>
              </span>
            '

