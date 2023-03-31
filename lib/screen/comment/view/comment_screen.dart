import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/comment_provider.dart';

class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

Comments_provider?comments_providerT;
Comments_provider? comments_providerF;

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    comments_providerF = Provider.of<Comments_provider>(context, listen: false);
    comments_providerT = Provider.of<Comments_provider>(context, listen: true);

    return SafeArea(
      child: Scaffold(

        body: Column(
          children: [

            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                comments_providerF!.JsonParsing();
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                child: Text(
                  "Comment data",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: comments_providerT!.commentList.length,
                itemBuilder: (context, index) {
                  return  Row(
                    children:  <Widget>[
                      Expanded(
                        child: ListTile(

                          title: Text(
                              "${comments_providerT!.commentList[index].postId}"),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          // trailing: FlutterLogo(),
                          leading: Text(
                              "${comments_providerT!.commentList[index].id}"),
                        ),
                      ),     Expanded(
                        child: ListTile(
                          // trailing: FlutterLogo(),
                          leading: Text(
                              "${comments_providerT!.commentList[index].name}"),
                        ),
                      ),
                    ],
                  );



                    ListTile(

                      title: Text(
                          "${comments_providerT!.commentList[index].postId}"),
                      subtitle: Text(
                          "${comments_providerT!.commentList[index].name}"),
                      trailing: Text(
                          "${comments_providerT!.commentList[index].email}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}