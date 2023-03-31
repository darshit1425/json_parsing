class commentsModel{
  int? id,postId;
  String?name,email;

  commentsModel({this.id,this.postId,this.name,this.email});

  commentsModel fromJson(Map m1)
  {
    id=m1['id'];
    postId=m1['userId'];
    name=m1['title'];
    email=m1['body'];

    commentsModel c1=commentsModel(id:id,name:name,email: email,postId: postId);
    return c1;
  }
}