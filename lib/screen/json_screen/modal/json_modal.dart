class PostModel {
  int? id, userId;
  String? title, body;

  PostModel({this.id, this.userId, this.body, this.title});

  PostModel fromJson(Map m1) {
    id = m1['id'];
    userId = m1['userId'];
    title = m1['title'];
    body = m1['body'];

    PostModel p1 = PostModel(id: id, userId: userId, title: title, body: body);
    return p1;
  }
}

class UserModal {
  int? id;
  String? username, name;

  UserModal({this.id, this.username, this.name});

  UserModal fromJson(Map m1) {
    id = m1['id'];
    name = m1['name'];
    username = m1['username'];

    UserModal u1 = UserModal(id: id, username: username, name: name);
    return u1;
  }
}

// class PhotoModal {
//   int? id,albumId;
//   String? title, url;
//
//   PhotoModal({this.id, this.title, this.url,this.albumId});
//
//   PhotoModal fromJson(Map m1) {
//     id = m1['id'];
//     albumId = m1['albumId'];
//     title = m1['title'];
//     url = m1['url'];
//
//
//     PhotoModal photos= PhotoModal(id: id, title: title, url: url,albumId: albumId);
//     return photos;
//   }
// }
class PhotoModal {
  int? id;
  String? title;

  PhotoModal({
    this.id,
    this.title,
  });

  PhotoModal fromJson(Map m1) {
    id = m1['id'];
    title = m1['title'];
    // url = m1['url'];

    PhotoModal photo = PhotoModal(
      id: id,
      title: title,
    );
    return photo;
  }
}

//

class CommentModal {
  int? id;
  String? name, email;

  CommentModal({this.id, this.name, this.email});

  CommentModal fromJson(Map m1) {
    id = m1['id'];
    name = m1['name'];
    email = m1['email'];

    CommentModal comment = CommentModal(id: id, name: name, email: email);
    return comment;
  }
}



