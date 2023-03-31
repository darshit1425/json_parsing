//
// class albumsModal {
//   int? id;
//   String? name, email;
//
//   albumsModal({this.id, this.name, this.email});
//
//   albumsModal fromJson(Map m1) {
//     id = m1['id'];
//     name = m1['name'];
//     email = m1['email'];
//     //
//     CommentModal album = CommentModal(id: id, name: name, email: email);
//     return album();
//   // }
// }


class albumModel{
  int? id,userId;
  String?title;

  albumModel({this.id,this.userId,this.title});

  albumModel fromJson(Map m1)
  {
    id=m1['id'];
    userId=m1['userId'];
    title=m1['title'];

    albumModel p1=albumModel(id:id,title:title,userId: userId);
    return p1;
  }
}