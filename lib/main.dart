import 'package:flutter/material.dart';
import 'package:splittin_money_on_the_ride/screens/authenticator/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/login':
            return MaterialPageRoute(builder: (_) => LoginScreen());
          case '/':
          default:
            return MaterialPageRoute(builder: (_) => LoginScreen());
        }
      },
    );
  }
}
