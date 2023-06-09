import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/json_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Json_provider? ProviderT;
  Json_provider? ProviderF;



  @override
  Widget build(BuildContext context) {
    ProviderT = Provider.of<Json_provider>(context, listen: true);
    ProviderF = Provider.of<Json_provider>(context, listen: false);
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
                ProviderF!.jsonPrasing();
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 100,
                child: Text(
                  "Post data",
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
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${ProviderT!.postList[index].title}"),
                    leading: Text("${ProviderT!.postList[index].id}"),
                    subtitle: Text("${ProviderT!.postList[index].body}"),
                  );
                },
                itemCount: ProviderF!.postList.length,
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
