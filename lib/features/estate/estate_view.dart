import 'package:estate/features/drawer/custom_drawer.dart';
import 'package:estate/features/estate/widgets/estate_body.dart';
import 'package:flutter/material.dart';

class EstateView extends StatefulWidget {
  const EstateView({Key? key}) : super(key: key);

  @override
  State<EstateView> createState() => _EstateViewState();
}

class _EstateViewState extends State<EstateView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomDrawer(),
      body: const EstateBody(),
    );
  }
}
