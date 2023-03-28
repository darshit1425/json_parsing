import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_parsing/screen/json_screen/view/home_screen.dart';

import 'package:provider/provider.dart';

import 'screen/json_screen/provider/json_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Json_provider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '/',
        routes: {
          '/': (context) => Home(),
        },
      ),
    ),
  );
}
