import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../mobx/estate_data_mobx.dart';

class DrawerBody extends StatelessWidget {
  final EstateDataMobx mobx;
  const DrawerBody({Key? key, required this.mobx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Observer(
          builder: (_) {
            final count = mobx.estate?.count.toString() ?? '0';
            return Visibility(
              visible: mobx.estate != null,
              replacement: const LinearProgressIndicator(),
              child: Text(
                'the count value is  \n $count',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
