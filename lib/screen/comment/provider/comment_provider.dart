import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../modal/comment_modal.dart';


class Comments_provider extends ChangeNotifier{
  List<dynamic>commentList=[];

  Future<void>JsonParsing()async {
    String jsonData = await rootBundle.loadString("assets/json/comments.json");
    var json=jsonDecode(jsonData);

    List<dynamic>commentsModelList= json.map((e)=>commentsModel().fromJson(e)).toList();
    commentList= commentsModelList;
    notifyListeners();

  }
}
