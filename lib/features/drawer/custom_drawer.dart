import 'package:estate/features/drawer/widgets/drawer_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'mobx/estate_data_mobx.dart';

final stateMobx = EstateDataMobx();

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: DrawerBody(
          mobx: EstateDataMobx(),
        ),
      ),
    );
  }
}
