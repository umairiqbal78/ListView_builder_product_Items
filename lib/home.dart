import 'package:flutter/material.dart';
import 'package:new_project/data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Api_data(),
    ));
  }
}
