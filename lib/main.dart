
import 'package:flutter/material.dart';
import 'package:flutter_provider_valuelistenablebuilder/provider_valuelistenablebuilder/counter_value.dart';
import 'package:flutter_provider_valuelistenablebuilder/provider_valuelistenablebuilder/counterwidget_valuelistenable.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<CounterValue>(create: (_) => CounterValue())
        ],
          child: CounterWidgetValueListenable()
      ),
    );

  }
}