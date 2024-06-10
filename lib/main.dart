import 'package:big_koperasi/bloc/navigation_buttom_handler/navigation_buttom_handler_bloc.dart';
import 'package:big_koperasi/config/tamplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationButtomHandlerBloc()),
      ],
      child: MaterialApp(
        title: 'Yakena',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Tamplate(),
      ),
    );
  }
}
