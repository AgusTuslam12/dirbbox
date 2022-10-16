import 'package:dirbbox/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        toolbarHeight: 64.0,
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 18,
          splashRadius: 20,
          color: Color(0xff22215B),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            color: Color(0xff22215B),
            splashRadius: 20,
          ),
        ],
        title: Text(
          'My Profile',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff22215B),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 210,
            decoration: BoxDecoration(
              color: Color(0xff22215B),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffFF317B),
                  ),
                  child: Center(
                    child: Text(
                      "PRO",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    child: Image.asset(
                      "assets/images/profile.png",
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xffEEF7FE)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Neelesh Chaudhary",
                    style: nameProfile,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "UI / UX Designer",
                    style: textlorem,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      style: textlorem,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ]),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Folder",
                style: subname,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/add.png"),
                    iconSize: 18,
                    splashRadius: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/settings.png"),
                    iconSize: 18,
                    splashRadius: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/forward.png"),
                    iconSize: 18,
                    color: Color(0xff22215B),
                    splashRadius: 20,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardFolder(
                image: Image.asset("assets/images/folder_blue.png"),
                title: "Mobile Apps",
                color: Color(0xffEEF7FE),
                data: "December, 2022",
              ),
              CardFolder(
                image: Image.asset("assets/images/folder_yellow.png"),
                title: "Mobile Apps",
                color: Color(0xffFFFBEC),
                data: "December, 2022",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardFolder(
                image: Image.asset("assets/images/folder_red.png"),
                title: "Mobile Apps",
                color: Color(0xffFEEEEE),
                data: "December, 2022",
              ),
              CardFolder(
                image: Image.asset("assets/images/folder_green.png"),
                title: "Mobile Apps",
                color: Color(0xffF0FFFF),
                data: "December, 2022",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Uploads",
                style: subname,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/sort.png"),
                splashRadius: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffEEF7FE),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      splashRadius: 30,
                      splashColor: Color(0xff567DF4),
                      icon: Image.asset("assets/images/Word.png"),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: 30, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Project.docx",
                            style: nameFolder,
                          ),
                          Text(
                            "November 22.2022",
                            style: textRecent,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "300kb",
                  style: textRecent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  const CardFolder({
    Key? key,
    required this.color,
    required this.title,
    required this.data,
    required this.image,
  }) : super(key: key);

  final String title;
  final String data;
  final Color color;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107,
      width: 148,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image,
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: nameFolder,
            ),
            Text(
              data,
              style: textFolder,
            ),
          ],
        ),
      ),
    );
  }
}
