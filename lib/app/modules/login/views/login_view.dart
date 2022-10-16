import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              width: Get.width,
              child: Image.asset("assets/images/background.png",
                  fit: BoxFit.cover),
            ),
            // body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                    width: 170,
                    height: 189,
                    child: Image.asset("assets/images/image1.png",
                        fit: BoxFit.contain),
                  ),
                  Text(
                    "Welcom",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("Dirbbox",
                      style: GoogleFonts.poppins(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                    width: 250,
                    child: Text(
                        "Best cloud storage platform for all business and individuals to manage there data"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/finger.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Smart Id",
                              style: TextStyle(color: Color(0xFF567DF4)),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            primary: Color(0xFF567DF4).withOpacity(0.2),
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 10,
                            )),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/home/views/home_view');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign In",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward_rounded)
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            primary: Color(0xFF567DF4),
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 10,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 54,
                  ),
                  Center(child: Text("Use Social Login")),
                  SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/Instagram.png"),
                        Image.asset("assets/icons/Twitter.png"),
                        Image.asset("assets/icons/Facebook.png"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(child: Text("Craete an account")),
                ],
              ),
            )
          ],
        ));
  }
}
