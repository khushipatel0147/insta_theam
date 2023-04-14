import 'package:flutter/material.dart';

List storyList = [
  "assets/images/001.jpg",
  "assets/images/002.jpg",
  "assets/images/003.jpg",
  "assets/images/004.jpg",
  "assets/images/005.jpg",
  "assets/images/006.jpg",
  "assets/images/007.jpg",
  "assets/images/008.jpg",
  "assets/images/009.jpg",
  "assets/images/0010.jpg"
];

List postList = [
  "assets/images/01.jpg",
  "assets/images/02.jpg",
  "assets/images/03.jpg",
  "assets/images/04.jpg",
  "assets/images/05.jpg",
  "assets/images/06.jpeg",
  "assets/images/07.jpeg",
  "assets/images/08.jpg",
  "assets/images/09.jpg",
  "assets/images/010.jpg",
  "assets/images/011.jpg",
  "assets/images/012.jpg",
];
class Insta extends StatefulWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Instagram",
                style: TextStyle(
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22),
              ),
            ),
          ),
          leadingWidth: 150,
          title: Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite_border, color: Colors.black),
                SizedBox(width: 20),
                Icon(Icons.send, color: Colors.black),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          currentIndex: i,
          onTap: (value) {
            setState(() {
              i = value;
              if (i == 1) {
                Navigator.pushNamed(context, 'upload').then((value) {
                  setState(() {
                    i=0;
                  });
                },);
              }
              if (i == 2) {
                Navigator.pushNamed(context, 'profile').then((value) {
                  setState(() {
                    i=0;
                  });
                },);
              }
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: "Upload",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
              Column(
                children: [
                  post(0),
                  post(1),
                  post(2),
                  post(3),
                  post(4),
                  post(5),
                  post(6),
                  post(7),
                  post(8),
                  post(9),
                  post(10),
                  post(11),
                ],
              )
            ],
          ),
        ),
      ),
    );
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

  Widget post(int i) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("${storyList[6]}"),
                radius: 18,
              ),
              SizedBox(width: 10),
              Text(
                "doreamon",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Spacer(),
              Icon(Icons.more_vert, size: 25),
            ],
          ),
        ),
        SizedBox(height: 15),
        Image.asset(
          "${postList[i]}",
          height: 430,
          width: 370,
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(
                Icons.favorite,
                size: 25,
                color: Colors.red,
              ),
              SizedBox(width: 15),
              Icon(Icons.messenger_outline, size: 25),
              SizedBox(width: 15),
              Icon(Icons.send, size: 25),
              Spacer(),
              Icon(Icons.bookmark_border, size: 25),
              SizedBox(width: 15),
            ],
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
