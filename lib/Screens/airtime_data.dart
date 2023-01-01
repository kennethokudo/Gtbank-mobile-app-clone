import 'package:flutter/material.dart';
import 'package:flutter_application_8/widgets/drawerListTile_widget.dart';
import 'package:flutter_application_8/widgets/drawer_widet.dart';

class AirtimeData extends StatelessWidget {
  const AirtimeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text("Airtime & Data"),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          SizedBox(height: 30),
          DrawerListTileWidget(
            icon: Icons.android,
            text: "Mobile Top Up",
            icon2: Icons.arrow_forward_ios,
          ),
          DrawerListTileWidget(
            icon: Icons.circle,
            text: "Data Bundles",
            icon2: Icons.arrow_forward_ios,
          ),
          DrawerListTileWidget(
            icon: Icons.lock_clock,
            text: "Airtime History",
            icon2: Icons.arrow_forward_ios,
          )
        ],
      ),
    );
  }
}
