import 'dart:ffi';

import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String img = "https://imgs.search.brave.com/dGpYRkJ8qMAolU_XJQBl0DvUyfuh2NFPvQAu0RuJ7Vg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/bmJhLmNvbS9tYW5h/Z2UvMjAyNC8wNi9s/ZWJyb24tamFtZXMt/YnJvbm55LWphbWVz/LWxvb2stdXAuanBn";
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child:
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: size.height/4.5,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: ClipRRect(child: Image.network(fit: BoxFit.cover, img)),
                    ),
                    Container(
                      height: size.height/4.5,
                      width: size.width,
                      color: Colors.black26,
                    ),
                    Positioned(
                        top: 60,
                        left: 170,
                        child: Icon(
                          Icons.play_circle_fill,
                          color: Colors.white,
                          size: 60
                        ),
                    ),
                    Positioned(
                        top: 5,
                        left: 10,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,)
                    ),
                    Positioned(
                        top: 5,
                        right: 10,
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 30,)
                    ),
                  ],
                ),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bron and his seed looking at his banner in unison", style: TextStyle(fontSize: 22),),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text("LeBron James", style: TextStyle(fontSize: 10),),
                    SizedBox(width: 160,),
                    Text("Feb 6, 2023", style: TextStyle(fontSize: 10),),
                  ],
                ),
                SizedBox(height: 20,),
                Text("Bron and his seed looking at his banner in unison", style: TextStyle(fontSize: 22),),


              ],
            ),
          )
        ],
      ),

    );
  }
}
