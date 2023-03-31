import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modal/photo_modal.dart';


class Photos_Provider extends ChangeNotifier{
  List<dynamic>postList=[];

  Future<void>JsonParsing()async {
    String jsonData = await rootBundle.loadString("assets/json/photos.json");
    var json=jsonDecode(jsonData);

    List<dynamic>photoModelList= json.map((e)=>photoModel().fromJson(e)).toList();
    postList= photoModelList;
    notifyListeners();

  }
}
