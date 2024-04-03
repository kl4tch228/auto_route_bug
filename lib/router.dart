import 'package:auto_route/auto_route.dart';
import 'main.dart';

part 'router.gr.dart';

final appRouter = AppRouter();

@RoutePage(name: 'RootRouter')
class RootPageRouter extends AutoRouter {}

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: FirstRoute.page,
      initial: true,
    ),
    AutoRoute(
      page: SecondRoute.page,
      path: '/second',
    ),
  ];
}