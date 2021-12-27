import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:booksapps/pages/sing_ui/sing_into.dart';
import 'package:booksapps/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ProviderTheme>(create: (context) => ProviderTheme()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<ProviderTheme>(context).themeData,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          nextScreen: const Directionality(
            child: SingInto(),
            textDirection: TextDirection.rtl,
          ),
          backgroundColor: Colors.white,
          animationDuration: const Duration(milliseconds: 1500),
          splashTransition: SplashTransition.fadeTransition,
          duration: 2500,
          splashIconSize: 500,
          splash: Image.asset(
            'assets/loge_app.png',
            fit: BoxFit.cover,
          ),
        ));
  }
}
