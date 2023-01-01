import 'package:flutter/material.dart';
import 'package:flutter_application_8/widgets/drawerListTile_widget.dart';
import 'package:flutter_application_8/widgets/drawer_widet.dart';

class QuickLoans extends StatelessWidget {
  const QuickLoans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("Quick Loans"),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          SizedBox(height: 30),
          DrawerListTileWidget(
            icon: null,
            text: "Quick Credit",
            icon2: Icons.arrow_forward_ios,
          ),
          DrawerListTileWidget(
            icon: null,
            text: "Insurance Loans",
            icon2: Icons.arrow_forward_ios,
          )
        ],
      ),
    );
  }
}
