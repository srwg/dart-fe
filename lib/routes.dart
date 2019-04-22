import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'sub_component_a.template.dart' as a_template;
import 'sub_component_b.template.dart' as b_template;

class Routes {
  static final a = RouteDefinition(
    routePath: RoutePath(path: 'a'),
    component: a_template.SubComponentANgFactory,
  );
  static final b = RouteDefinition(
    routePath: RoutePath(path: 'b'),
    component: b_template.SubComponentBNgFactory,
  );
  static final all = <RouteDefinition>[
    a, b,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePath(path: 'a').toUrl()),
  ];
}
