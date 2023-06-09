import 'package:estate/features/drawer/widgets/drawer_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'mobx/estate_data_mobx.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final estateMobx = EstateDataMobx();

  @override
  void initState() {
    estateMobx.indexEstateData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: DrawerBody(
          mobx: estateMobx,
        ),
      ),
    );
  }
}
