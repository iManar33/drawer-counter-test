import 'dart:math';

import 'package:flutter/material.dart';

import '../mobx/estate_mobx.dart';

class EstateBody extends StatefulWidget {
  const EstateBody({Key? key}) : super(key: key);

  @override
  State<EstateBody> createState() => _EstateBodyState();
}

class _EstateBodyState extends State<EstateBody> {
  final estateMobx = EstateMobx();
  int randomCount = Random().nextInt(100);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FloatingActionButton.extended(
              onPressed: () async {
                estateMobx.incrementCounter(randomCount);
                setState(() {
                  randomCount = Random().nextInt(100);
                });
              },
              label: Text('make count value $randomCount'),
            ),
          ),
        ),
      ],
    );
  }
}
