import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modal/album_modal.dart';

class Albums_provider extends ChangeNotifier{
  List<dynamic>postList=[];

  Future<void>JsonParsing()async {
    String jsonData = await rootBundle.loadString("assets/json/albums.json");
    var json=jsonDecode(jsonData);

    List<dynamic>postModelList= json.map((e)=>albumModel().fromJson(e)).toList();
    postList= postModelList;
    notifyListeners();

  }
}