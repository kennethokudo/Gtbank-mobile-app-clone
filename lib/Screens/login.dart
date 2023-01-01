import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/mycolor.dart';
import 'package:flutter_application_8/Screens/home_page.dart';
import 'package:flutter_application_8/widgets/MyButton.dart';
import 'package:flutter_application_8/widgets/signforgothelp_widget.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: myColor.color,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.email_outlined,
                            color: Colors.white,
                            size: 35,
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.white,
                              width: 2,
                            )),
                            child: Image.asset(
                              "images/gtb.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Guaranty Trust Bank",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 310),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Nigeria",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Mobile Banking",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 45,
                    color: const Color(0xff30383F),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            controller: _usernameController,
                            cursorColor: Colors.white,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration.collapsed(
                                hintText: "User ID",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 45,
                    color: const Color(0xff30383F),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            controller: _passwordController,
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.white,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration.collapsed(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  MyButton(
                    text: "Login",
                    color: myColor.color2,
                    onPressed: () {
                      if (_usernameController.text.isEmpty) {
                        Flushbar(
                          backgroundColor: Colors.red,
                          flushbarPosition: FlushbarPosition.TOP,
                          title: "Error",
                          message: "Please enter User ID",
                          duration: Duration(seconds: 3),
                        )..show(context);
                      } else if (_passwordController.text.isEmpty) {
                        Flushbar(
                          backgroundColor: Colors.red,
                          flushbarPosition: FlushbarPosition.TOP,
                          title: "Error",
                          message: "Please enter password",
                          duration: const Duration(seconds: 3),
                        )..show(context);
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const Center(
                                child: CircularProgressIndicator(
                                  color: myColor.color2,
                                ),
                              );
                            });
                        Future.delayed(const Duration(seconds: 4), () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomePage()));
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const SignForgotHelp(text: "Sign Up"),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const SignForgotHelp(
                            text: "Forgot User ID/ Password"),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const SignForgotHelp(text: "Get Help"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SignForgotHelp(text: "Tap here to switch to"),
                      const Text(
                        " mWallet",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(child: Container()),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.money_sharp,
                              color: myColor.color2,
                            ),
                          ),
                          const SizedBox(height: 7),
                          const Text(
                            "Make Money",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _validatorCheck() {
    return Flushbar(
      backgroundColor: Colors.red,
      flushbarPosition: FlushbarPosition.TOP,
      title: "Error",
      message: "Please enter",
      duration: const Duration(seconds: 3),
    )..show(context);
  }
}
