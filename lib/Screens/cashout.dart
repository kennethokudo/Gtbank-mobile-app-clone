import 'package:flutter/material.dart';
import 'package:flutter_application_8/widgets/drawerListTile_widget.dart';
import 'package:flutter_application_8/widgets/drawer_widet.dart';

class Cashout extends StatelessWidget {
  const Cashout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("Cashout"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          DrawerListTileWidget(
            icon: null,
            text: "737 Cash",
            icon2: Icons.arrow_forward_ios,
          ),
          DrawerListTileWidget(
            icon: Icons.money,
            text: "PayCode",
            icon2: Icons.arrow_forward_ios,
          )
        ],
      ),
    );
  }
}
