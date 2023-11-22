import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vincent_s_application6/theme/theme_helper.dart';
import 'package:vincent_s_application6/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'vincent_s_application6',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.eWalletTopupScreen,
      routes: AppRoutes.routes,
    );
  }
}
