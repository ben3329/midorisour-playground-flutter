import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:midorisour_playground_flutter/routes/on_generate_custom_route.dart';

void main() {
  // Use clean URLs on web (no # hash)
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
      ),
      routerConfig: onGenerateCustomRoute,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            scrollbars: false,
            dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
          ),
          child: child!,
        );
      },
    );
  }
}
