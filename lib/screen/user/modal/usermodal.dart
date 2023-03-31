class userModel{
  int? id,userId;
  String?title;

  userModel({this.id,this.userId,this.title});

  userModel fromJson(Map m1)
  {
    id=m1['id'];
    userId=m1['userId'];
    title=m1['title'];


    userModel T1=userModel(id:id,title:title,userId: userId);
    return T1;
  }
}