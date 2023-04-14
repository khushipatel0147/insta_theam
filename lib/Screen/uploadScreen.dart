import 'package:flutter/material.dart';
import 'package:insta_theam/Screen/Home.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text("Gallery",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                      color: Colors.black)),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    gallery(a: 0, b: 1, c: 2),
                    gallery(a: 3, b: 4, c: 5),
                    gallery(a: 6, b: 7, c: 8),
                    gallery(a: 9, b: 10, c: 11),
                    gallery(a: 1, b: 2, c: 3),
                    gallery(a: 4, b: 5, c: 6),
                    gallery(a: 7, b: 8, c: 9),
                    gallery(a: 10, b: 11, c: 3),
                    gallery(a: 4, b: 5, c: 6),
                    gallery(a: 7, b: 8, c: 9),
                    gallery(a: 10, b: 11, c: 0),
                    gallery(a: 1, b: 2, c: 3),
                    gallery(a: 4, b: 5, c: 6),
                    gallery(a: 7, b: 8, c: 9),
                    gallery(a: 10, b: 11, c: 1),
                    gallery(a: 2, b: 3, c: 4),
                    gallery(a: 5, b: 6, c: 7),
                    gallery(a: 8, b: 9, c: 10),
                    gallery(a: 4, b: 5, c: 6),
                    gallery(a: 3, b: 10, c: 9),
                  ],
                ),
              ),
            )));
  }

  Widget gallery({required int a,required int b,required int c,}) {
    return Row(
      children: [
        Image.asset("${postList[a]}",height: 180,width: 115,),
        SizedBox(width: 5),
        Image.asset("${postList[b]}",height: 180,width: 115,),
        SizedBox(width: 5),
        Image.asset("${postList[c]}",height: 180,width: 115,),
      ],
    );
  }
}
