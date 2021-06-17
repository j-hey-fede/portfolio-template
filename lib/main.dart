import 'package:flutter/material.dart';
import 'package:portfolio/views/portfolio_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'j.h.fede',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const PortfolioView(),
    );
  }
}
