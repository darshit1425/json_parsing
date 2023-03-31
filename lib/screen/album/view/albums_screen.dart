import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../provider/album_provider.dart';

class Albums extends StatefulWidget {
  const Albums({Key? key}) : super(key: key);

  @override
  State<Albums> createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
  Albums_provider? AProviderT;
  Albums_provider? AProviderF;

  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<Json_provider>(context, listen: false).jsonPrasing();
  // }

  @override
  Widget build(BuildContext context) {
    AProviderT = Provider.of<Albums_provider>(context, listen: true);
    AProviderF = Provider.of<Albums_provider>(context, listen: false);
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
                AProviderF!.JsonParsing();
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 105,
                child: Text(
                  "Album data",
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
                itemCount: AProviderT!.postList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${AProviderT!.postList[index].userId}"),
                    title: Text("${AProviderT!.postList[index].id}"),
                    subtitle: Text("${AProviderT!.postList[index].title}"),
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
