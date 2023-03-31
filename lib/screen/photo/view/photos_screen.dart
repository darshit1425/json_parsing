import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../json_screen/provider/json_provider.dart';
import '../provider/photo_provider.dart';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  Photos_Provider? pProviderT;
  Photos_Provider? pProviderF;

  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<Json_provider>(context, listen: false).jsonPrasing();
  // }

  @override
  Widget build(BuildContext context) {
    pProviderT = Provider.of<Photos_Provider>(context, listen: true);
    pProviderF = Provider.of<Photos_Provider>(context, listen: false);
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
                pProviderF!.JsonParsing();
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 100,
                child: Text(
                  "photos data",
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
              itemCount: pProviderT!.postList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text("${pProviderT!.postList[index].id}"),
                  title: Text("${pProviderT!.postList[index].albumId}"),
                  subtitle: Text("${pProviderT!.postList[index].title}"),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
