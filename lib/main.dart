import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'login_page.dart';
import 'consumption_page.dart';
import 'payment_page.dart';

void main() => runApp(AppIntellimeter());

class AppIntellimeter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intellimeter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
