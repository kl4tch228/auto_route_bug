import 'package:auto_route/auto_route.dart';
import 'package:auto_route_bug/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}

@RoutePage()
class FirstView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("First Screen"),
            FilledButton(
              onPressed: () {
                appRouter.push(const SecondRoute());
              },
              child: const Text("to second")
            )
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class SecondView extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second"), leading: const AutoLeadingButton()),
      // appBar: AppBar(title: const Text("Second")),
      body: Center(
        child: Column(
          children: [
            const Text("Second Screen"),
            FilledButton(
                onPressed: () {
                  appRouter.push(const ThirdRoute());
                },
                child: const Text("to third")
            )
          ],
        ),
      ),
    );
  }
}


@RoutePage()
class ThirdView extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third"), leading: const AutoLeadingButton()),
      // appBar: AppBar(title: const Text("Second")),
      body: const Center(child: Text("Third Screen")),
    );
  }
}
