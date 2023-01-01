import 'package:flutter/material.dart';
import 'package:flutter_application_8/widgets/drawerListTile_widget.dart';
import 'package:flutter_application_8/widgets/drawer_widet.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text("Transfer"),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          DrawerListTileWidget(
            icon: Icons.person,
            text: "To Own Accounts",
            icon2: Icons.arrow_forward_ios,
          ),
          DrawerListTileWidget(
            icon: Icons.add,
            text: "To GTBank",
            icon2: Icons.arrow_forward_ios,
          ),
          DrawerListTileWidget(
            icon: Icons.people,
            text: "To Other Banks",
            icon2: Icons.arrow_forward_ios,
          ),
          DrawerListTileWidget(
            icon: Icons.person,
            text: "Pre-Registered Transfer",
            icon2: Icons.arrow_forward_ios,
          ),
        ],
      ),
    );
  }
}
