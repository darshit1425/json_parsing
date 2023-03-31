import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modal/usermodal.dart';

class user_provider extends ChangeNotifier {
  List<dynamic> postList = [];

  Future<void> JsonParsing() async {
    String jsonData = await rootBundle.loadString("assets/json/todo.json");
    var json = jsonDecode(jsonData);

    List<dynamic> photoModelList =
        json.map((e) => userModel().fromJson(e)).toList();
    postList = photoModelList;
    notifyListeners();
  }
}
