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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FloatingActionButton.extended(
                    onPressed: () async {
                      showDialog(
                        context: context,
                        builder: (context) => const Center(
                          child: LinearProgressIndicator(),
                        ),
                      );
                      await estateMobx.incrementCounter(randomCount);
                      Navigator.pop(context);
                      setState(() {
                        randomCount = Random().nextInt(100);
                      });
                    },
                    label: Text('make count value $randomCount'),
                  ),
                ),
              ),
              Visibility(
                visible: false,
                child: const LinearProgressIndicator(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
