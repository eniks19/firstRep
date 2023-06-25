import 'package:backcolor/main_page.dart';
import 'package:backcolor/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => MyColor())],
      child: MaterialApp(
        home: MyDefalut(),
      ),
    );
  }
}
