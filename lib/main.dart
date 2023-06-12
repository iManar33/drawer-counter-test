import 'package:estate/features/drawer/mobx/estate_data_mobx.dart';
import 'package:estate/features/estate/estate_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/estate/mobx/estate_mobx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const EstateView(),
    );
  }
}
