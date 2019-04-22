import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'routes.dart';
import 'sub_component_a.dart';
import 'sub_component_b.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1> Tour of heros </h1>
    <!--router-outlet [routes]="Routes.all"--><!--/router-outlet-->
  ''',
  directives: [SubComponentA, SubComponentB, routerDirectives],
  exports: [Routes],
)
class AppComponent {
}
