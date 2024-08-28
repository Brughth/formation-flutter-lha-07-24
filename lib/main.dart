import 'package:flutter/material.dart';
import 'package:flutter_application_2/application_screen.dart';
import 'package:flutter_application_2/counter_with_cubic/logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Formation Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
          ),
        ),
        darkTheme: ThemeData(
          scaffoldBackgroundColor: Color(0xff333333),
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
          ),
        ),
        themeMode: ThemeMode.light,
        home: const ApplicationScreen(),
      ),
    );
  }
}
