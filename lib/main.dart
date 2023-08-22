import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:systemmanagement/screens/replace.dart';
import 'package:systemmanagement/screens/replacesetstate.dart';
import 'package:systemmanagement/screens/login.dart';
import 'package:systemmanagement/screens/screen3.dart';

import 'Cubits/cubit/change_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ChangeCubit>(
            create: (BuildContext context) => ChangeCubit(),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const login()));
  }
}
