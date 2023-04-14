import 'package:flutter/material.dart';
import 'package:insta_theam/Screen/Home.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profile Screen",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1,
                color: Colors.black)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: (AssetImage("${postList[11]}")),
                      radius: 45,
                    ),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Text(
                          "12",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Text(
                          "100K",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Text(
                          "13",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 27,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all()),
                      child: Center(
                        child: Text(
                          "Following",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 1,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      height: 27,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all()),
                      child: Center(
                        child: Text(
                          "Message",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 1,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      height: 27,
                      width: 27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all()),
                      child: Center(
                          child: Icon(
                        Icons.person_add_alt_outlined,
                        size: 20,
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      story(0),
                      story(1),
                      story(2),
                      story(3),
                      story(4),
                      story(5),
                      story(6),
                      story(7),
                      story(8),
                      story(9),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      gallery(a: 0, b: 1, c: 2),
                      gallery(a: 3, b: 4, c: 5),
                      gallery(a: 6, b: 7, c: 8),
                      gallery(a: 9, b: 10, c: 11),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget story(int i) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.yellow, Colors.purple],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight)),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(storyList[i]),
            ),
          ),
        ],
      ),
    );
  }

  Widget gallery({
    required int a,
    required int b,
    required int c,
  }) {
    return Row(
      children: [
        Image.asset(
          "${postList[a]}",
          height: 175,
          width: 111,
        ),
        SizedBox(width: 5),
        Image.asset(
          "${postList[b]}",
          height: 175,
          width: 111,
        ),
        SizedBox(width: 5),
        Image.asset(
          "${postList[c]}",
          height: 175,
          width: 111,
        ),
      ],
    );
  }
}
