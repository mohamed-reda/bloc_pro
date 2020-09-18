import 'package:bloc_pro/flutter_bloc_ex/flutter_bloc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'flutter_bloc_ex/flutter_bloc_ex.dart';

void main() {
  Bloc.observer = FlutterBlocEx();

//  Bloc.observer = BlocEx();
//  cubitMain();
//  blocMain();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterBlocPage(),
    );
  }
}
