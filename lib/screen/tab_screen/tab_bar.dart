import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_parsing/screen/album/view/albums_screen.dart';
import 'package:json_parsing/screen/comment/view/comment_screen.dart';
import 'package:json_parsing/screen/photo/view/photos_screen.dart';
import 'package:json_parsing/screen/user/view/user_screen.dart';

import 'package:provider/provider.dart';

import '../json_screen/provider/json_provider.dart';
import '../json_screen/view/home_screen.dart';

class Tab_Screen extends StatefulWidget {
  const Tab_Screen({Key? key}) : super(key: key);

  @override
  State<Tab_Screen> createState() => _Tab_ScreenState();
}

class _Tab_ScreenState extends State<Tab_Screen> {
  Json_provider? homeProviderF;
  Json_provider? homeProviderT;

  @override
  Widget build(BuildContext context) {
    homeProviderF = Provider.of<Json_provider>(context, listen: false);

    homeProviderT = Provider.of<Json_provider>(context, listen: true);
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.red.shade50,
            appBar: AppBar(
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '');
                      },
                      icon: Icon(Icons.data_object),
                      color: Colors.black),
                ),
              ],
              elevation: 0,
              title: Text(
                "JSON data",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),
              bottom: TabBar(
                indicatorColor: Colors.black,
                // labelColor: Colors.black,

                tabs: [
                  Tab(
                    child: Text(
                      "Post",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "User",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Photos",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Comment",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Albums",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              // backgroundColor: Colors.deepPurple.shade300,
              backgroundColor: Colors.white,
            ),
            body: TabBarView(
              children: [
                Home(),
                User(),
                Photos(),
                Comment(),
                Albums(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//     boxShadow: [
//       BoxShadow(
//           color: Colors.black26,
//           offset: Offset(0.5, 0.5),
//           blurRadius: 0.5,
//           spreadRadius: 0.5),
//     ],
//   ),
// ),
