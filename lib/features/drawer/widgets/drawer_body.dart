import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../estate/mobx/estate_mobx.dart';
import '../mobx/estate_data_mobx.dart';

final stateMobx = EstateDataMobx();

class DrawerBody extends StatelessWidget {
  final EstateDataMobx mobx;
  const DrawerBody({Key? key, required this.mobx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mob = estateMobx;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Observer(
          builder: (_) {
            final count = mob.estate?.count.toString();
            if (count == null) {
              mob.indexEstateData();
            }

            return Visibility(
              visible: count != null,
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
