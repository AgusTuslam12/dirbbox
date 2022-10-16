import 'package:dirbbox/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DataList extends StatelessWidget {
  List data = [
    {
      "color": Color(0xffEEF7FE),
      "colorText": Color(0xff415EB6),
      "imageFolder": Image.asset(
        "assets/images/folder_blue.png",
        height: 28,
        width: 36,
      ),
      "nama": "Mobile Apps",
      "date": "Decembar 10.2020"
    },
    {
      "color": Color(0xffFFFBEC),
      "colorText": Color(0xffFFB110),
      "imageFolder": Image.asset("assets/images/folder_yellow.png"),
      "nama": "Mobile Apps",
      "date": "Decembar 10.2020"
    },
    {
      "color": Color(0xffFEEEEE),
      "colorText": Color(0xffAC4040),
      "imageFolder": Image.asset("assets/images/folder_red.png"),
      "nama": "Mobile Apps",
      "date": "Decembar 10.2020"
    },
    {
      "color": Color(0xffF0FFFF),
      "colorText": Color(0xff23B0B0),
      "imageFolder": Image.asset("assets/images/folder_green.png"),
      "nama": "Mobile Apps",
      "date": "Decembar 10.2020"
    },
    {
      "color": Color(0xffEEF7FE),
      "colorText": Color(0xff415EB6),
      "imageFolder": Image.asset("assets/images/folder_blue.png"),
      "nama": "Mobile Apps",
      "date": "Decembar 10.2020"
    },
    {
      "color": Color(0xffFFFBEC),
      "colorText": Color(0xffFFB110),
      "imageFolder": Image.asset("assets/images/folder_yellow.png"),
      "nama": "Mobile Apps",
      "date": "Decembar 10.2020"
    },
    {
      "color": Color(0xffFEEEEE),
      "colorText": Color(0xffAC4040),
      "imageFolder": Image.asset("assets/images/folder_red.png"),
      "nama": "Mobile Apps",
      "date": "Decembar 10.2020"
    },
    {
      "color": Color(0xffF0FFFF),
      "colorText": Color(0xff23B0B0),
      "imageFolder": Image.asset("assets/images/folder_green.png"),
      "nama": "Mobile Apps",
      "date": "Decembar 10.2020"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 150,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Card(
              elevation: 0,
              color: data[index]["color"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          data[index]["imageFolder"],
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: data[index]["colorText"],
                            ),
                            splashRadius: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        data[index]["nama"],
                        style: GoogleFonts.poppins(
                          color: data[index]["colorText"],
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        data[index]["date"],
                        style: GoogleFonts.poppins(
                          color: data[index]["colorText"],
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
