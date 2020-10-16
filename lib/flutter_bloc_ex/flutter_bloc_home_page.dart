import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'flutter_bloc_counter.dart';
import 'flutter_bloc_counter_page.dart';
import 'theme_cubit.dart';

/// A [StatelessWidget] which uses:
/// * [bloc](https://pub.dev/packages/bloc)
/// * [flutter_bloc](https://pub.dev/packages/flutter_bloc)
/// to manage the state of a counter.
class FlutterBlocOfHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return StreamBuilder<Object>(
              stream: null,
              builder: (context, snapshot) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: theme,
                  home: BlocProvider(
                    create: (_) => CounterBloc(),
                    child: FlutterBlocCounterPage(),
                  ),
                );
              });
        },
      ),
    );
  }
}
