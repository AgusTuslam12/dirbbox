import 'package:dirbbox/app/modules/home/views/datalist.dart';
import 'package:dirbbox/app/modules/side_menu/views/side_menu_view.dart';
import 'package:dirbbox/app/modules/storage_details/views/storage_details_view.dart';
import 'package:dirbbox/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 50,
        title: Text(
          'Your Dribbox',
          style: GoogleFonts.poppins(
            color: Color(0xff22215B),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => StorageDetailsView(),
                  ),
                );
              },
              icon: Image.asset("assets/icons/Union.png"))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                TextField(
                  showCursor: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff22215B),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffEEF2FE),
                      ),
                    ),
                    prefixIcon: Image.asset("assets/icons/Search.png"),
                    hintText: "Searce Folder",
                    hintStyle: TextStyle(
                      color: Color(0xff22215B),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Color(0xff22215B),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Recent",
                          style: recent,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/forward_down.png"),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/burger.png"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/window.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: DataList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color(0xff22215B),
        child: const Icon(Icons.add),
      ),
    );
  }
}
