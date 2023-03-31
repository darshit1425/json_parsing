import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_parsing/screen/comment/view/comment_screen.dart';
import 'package:json_parsing/screen/json_screen/view/home_screen.dart';

import 'package:provider/provider.dart';

import 'screen/album/provider/album_provider.dart';
import 'screen/comment/provider/comment_provider.dart';
import 'screen/json_screen/provider/json_provider.dart';
import 'screen/album/view/albums_screen.dart';
import 'screen/photo/provider/photo_provider.dart';
import 'screen/photo/view/photos_screen.dart';
import 'screen/user/provider/user_provider.dart';
import 'screen/user/view/user_screen.dart';
import 'screen/tab_screen/tab_bar.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Json_provider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Comments_provider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Albums_provider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Photos_Provider(),
        ),ChangeNotifierProvider(
          create: (context) => user_provider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '3',
        routes: {
          // '/': (context) => Albums(),
          '/': (context) => Tab_Screen(),
          '1': (context) => Home(),
          '2': (context) => User(),
          '3': (context) => Photos(),
          '4': (context) => Comment(),
          '5': (context) => Albums(),
        },
      ),
    ),
  );
}
