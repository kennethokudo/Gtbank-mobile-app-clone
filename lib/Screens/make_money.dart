import 'package:flutter/material.dart';
import 'package:flutter_application_8/Screens/transfers.dart';
import 'package:flutter_application_8/constants/mycolor.dart';
import 'package:flutter_application_8/widgets/drawerListTile_widget.dart';
import 'package:flutter_application_8/widgets/drawer_widet.dart';

class MakeMoney extends StatelessWidget {
  const MakeMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: Text("Make Money"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  color: myColor.color2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: const [
                          Text(
                            "Make money by",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "1. Selling airtime 2% commission",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "2. Transfer to other Banks at #10",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Terms and Condition (per month):",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "1. Minimum Worth of #10000",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Airtime/Data",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const DrawerListTileWidget(
              icon: Icons.money,
              text: "Transfer",
              icon2: Icons.arrow_forward_ios,
            ),
            const DrawerListTileWidget(
              icon: Icons.money,
              text: "Airtime/Data request",
              icon2: Icons.arrow_forward_ios,
            ),
            const DrawerListTileWidget(
              icon: Icons.money,
              text: "Bills Payment",
              icon2: Icons.arrow_forward_ios,
            )
          ],
        ),
      ),
    );
  }
}
