import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Json_provider extends ChangeNotifier {
  List<dynamic> postList = [];

  Future<void> jsonPrasing() async {
    String jsonDataString =
        await rootBundle.loadString("assets/json/user.json");
    var json = jsonDecode(jsonDataString);
    postList = json;
    notifyListeners();
  }
}
