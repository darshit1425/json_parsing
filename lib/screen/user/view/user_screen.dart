import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/user_provider.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  user_provider? uProviderT;
  user_provider? uProviderF;

  @override
  Widget build(BuildContext context) {
    uProviderT = Provider.of<user_provider>(context, listen: true);
    uProviderF = Provider.of<user_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                uProviderF!.JsonParsing();
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 100,
                child: Text(
                  "User data",
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

            // ElevatedButton(
            //   onPressed: () {
            //     ProviderF!.jsonPrasing();
            //   },
            //   child: Text("Show Down"),
            // ),

            Expanded(
              child: ListView.builder(
                itemCount: uProviderT!.postList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${uProviderT!.postList[index].id}"),
                    title: Text("${uProviderT!.postList[index].userId}"),
                    subtitle: Text("${uProviderT!.postList[index].title}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      //   body:
      //
      //
      //
      //
      //
      //
      //   Expanded(
      //     child: ListView.builder(
      //       itemCount: ProviderT!.postList.length,
      //       itemBuilder: (context, index) {
      //         return ListTile(
      //           title: Text(
      //             "${ProviderF!.postList[index]['userId']}",
      //           ),
      //           leading: Text(
      //             "${ProviderF!.postList[index]['title']}",
      //           ),
      //         );
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}
