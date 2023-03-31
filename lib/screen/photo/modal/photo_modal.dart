class photoModel {
  int? id, albumId;
  String? title;

  photoModel({this.id, this.albumId, this.title});

  photoModel fromJson(Map m1) {
    id = m1['id'];
    albumId = m1['userId'];
    title = m1['title'];

    photoModel p1 = photoModel(id: id, title: title, albumId: albumId);
    return p1;
  }
}
