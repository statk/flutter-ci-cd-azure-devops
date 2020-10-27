import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'home_bloc.dart';
import 'home_page.dart';

void main() {
  registerServices();
  runApp(MyApp());
}

void registerServices() {
  GetIt.instance.registerFactory<HomeBloc>(() => HomeBloc());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}