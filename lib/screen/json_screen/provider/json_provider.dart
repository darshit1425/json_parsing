import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing/screen/json_screen/modal/json_modal.dart';

class Json_provider extends ChangeNotifier {
  List<dynamic> postList = [];

  Future<void> jsonPrasing() async {
    String jsonDataString =
        await rootBundle.loadString("assets/json/post.json");
    var json = jsonDecode(jsonDataString);
    postList = json;

    // factory call json
    List<dynamic> postModalList =
        json.map((e) => PostModel().fromJson(e)).toList();
    postList = postModalList;
    notifyListeners();
  }

  //
  List<dynamic> userList = [];
  Future<void> userjson() async {
    String jsonDataString =
        await rootBundle.loadString("assets/json/user.json");
    var json = jsonDecode(jsonDataString);
    userList = json;
    List<dynamic> usermodalList =
        json.map((e) => UserModal().fromJson(e)).toList();
    userList = usermodalList;
    notifyListeners();
  }

//

  List<dynamic> photoList = [];
  Future<void> photoJson() async {
    String jsonString = await rootBundle.loadString("assets/json/photos.json");
    var json = jsonDecode(jsonString);
    List<dynamic> photomodalList =
        json.map((e) => PhotoModal().fromJson(e)).toList();
    photoList = photomodalList;
    notifyListeners();
  }
}

//
List<dynamic> commentList = [];
Future<void> commentjson() async {
  String jsonString = await rootBundle.loadString("assets/json/comments.json");
  var json = jsonDecode(jsonString);
  List<dynamic> modalcommentList =
  json.map((e) => CommentModal().fromJson(e)).toList();
  commentList = modalcommentList;

}

//
List<dynamic> albumList = [];
Future<void> albumjson() async {
  String jsonString = await rootBundle.loadString("assets/json/albums.json");
  var json = jsonDecode(jsonString);
  List<dynamic> modalalbumsList =
  json.map((e) => CommentModal().fromJson(e)).toList();
  albumList = modalalbumsList;

}
