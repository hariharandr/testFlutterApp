import 'package:flutter/material.dart';
import 'package:quizapp/routes.dart';

void main(List<String> args) async {
  runApp(const MyApp());
}

String messageTitle = "Empty";
String notificationAlert = "alert";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Demo Flutter App',
        initialRoute: '/',
        routes: appRoutes,
        debugShowCheckedModeBanner: false);
  }
}
