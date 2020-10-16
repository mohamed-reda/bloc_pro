import 'package:bloc_pro/flutter_bloc_ex/flutter_bloc_home_page.dart';
import 'package:flutter/material.dart';

void main() {
//  Bloc.observer = FlutterBlocOfHome();

//  Bloc.observer = BlocEx();
//  cubitMain();
//  blocMain();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterBlocOfHomePage(),
    );
  }
}
