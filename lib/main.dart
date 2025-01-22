import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/application/bloc.dart';
import 'package:untitled1/data/counter.dart';
import 'package:untitled1/navigation/ui.dart';
import 'package:untitled1/services/dataBase/hive.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HiveDb().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CounterRepository(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: BlocProvider(
            create: (context) => CounterBloc(RepositoryProvider.of(context)),
            child: const MyHomePage(title: 'Flutter Demo Home Page'),
          )),
    );
  }
}
