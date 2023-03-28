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
  void initState() {
    super.initState();
    Provider.of<Json_provider>(context, listen: false).jsonPrasing();
  }

  @override
  Widget build(BuildContext context) {
    ProviderT = Provider.of<Json_provider>(context, listen: true);
    ProviderF = Provider.of<Json_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
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
                    leading: Text("${ProviderT!.postList[index]['id']}"),
                    title: Text("${ProviderT!.postList[index]['name']}"),
                    subtitle: Text("${ProviderT!.postList[index]['username']}"),
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
