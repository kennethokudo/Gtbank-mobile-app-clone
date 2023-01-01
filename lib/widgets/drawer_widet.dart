import 'package:flutter/material.dart';
import 'package:flutter_application_8/Screens/airtime_data.dart';
import 'package:flutter_application_8/Screens/cashout.dart';
import 'package:flutter_application_8/Screens/make_money.dart';
import 'package:flutter_application_8/Screens/quick_loans.dart';
import 'package:flutter_application_8/Screens/transfers.dart';
import 'package:flutter_application_8/constants/mycolor.dart';
import 'package:flutter_application_8/Screens/home_page.dart';
import 'package:flutter_application_8/widgets/myListTile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: myColor.color,
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Kenneth okudo",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Last login: Dec 16 2022 11:43 PM",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
            height: 0,
          ),
          MyListTile(
            icon: Icons.home,
            text: "Accounts",
            onPressed: () {
              _homePage(context);
            },
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.forward_10,
            text: "Transfers",
            onPressed: () {
              _transfer(context);
            },
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.money,
            text: "Make Money",
            onPressed: () {
              _makeMoney(context);
            },
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.attach_money,
            text: "Quick Loans",
            onPressed: () {
              _quickLoans(context);
            },
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.money,
            text: "CashOut",
            onPressed: () {
              _cashOut(context);
            },
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.payment,
            text: "Airtime & Data",
            onPressed: () {
              _airtimeData(context);
            },
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.home,
            text: "Bill Payments",
            onPressed: () {},
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.money,
            text: "Sports and Gaming",
            onPressed: () {},
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.person,
            text: "My Services",
            onPressed: () {},
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.settings,
            text: "Settings & Help",
            onPressed: () {},
          ),
          const Divider(
            height: 0,
            color: Colors.white,
          ),
          MyListTile(
            icon: Icons.person,
            text: "Rate Us",
            onPressed: () {},
          ),
          const SizedBox(height: 15),
          MaterialButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.spaceBetween,
                    title: const Text(
                      "Quit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: const Text(
                        "Are you sure you want to exit the application?"),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "NO",
                          style: TextStyle(
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "YES",
                          style: TextStyle(
                            color: Colors.greenAccent,
                          ),
                        ),
                      )
                    ],
                  );
                },
              );
            },
            height: 50,
            minWidth: double.infinity,
            color: myColor.color2,
            textColor: Colors.white,
            child: Row(
              children: const [
                Icon(Icons.logout),
                SizedBox(width: 10),
                Text("Logout"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _transfer(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Transfer()));
  }

  void _homePage(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomePage()));
  }

  void _makeMoney(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const MakeMoney()));
  }

  void _quickLoans(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const QuickLoans()));
  }

  void _cashOut(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Cashout()));
  }

  void _airtimeData(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const AirtimeData()));
  }
}
