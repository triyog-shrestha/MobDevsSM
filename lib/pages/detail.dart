import 'dart:ffi';
import 'dashboard.dart';

import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  relatedVideos(size, String text, String date, String img){
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: size.width /2.5,
              height: size.height / 5.5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned( left: 1,top: 1,child: Icon(Icons.play_circle_fill, color: Colors.white,)),
          ],


        ),

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(text, style: TextStyle(fontSize: 12)),
            ),
            Row(
              children: [
                FilledButton(onPressed: (){}, child: Text("Watch"), style: FilledButton.styleFrom(backgroundColor: Colors.red)),
                Text(date, style: TextStyle(fontSize: 12)),
              ],
            )
          ],
        ),
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String img = "https://imgs.search.brave.com/F4eX4IM21Zs10vR365gJFa_yE3h8-863QKL1G-zDCjY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/c2hla25vd3MuY29t/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDI0/LzEwL0dldHR5SW1h/Z2VzLTIxNzcxNzAz/NTctMS5qcGc_dz0x/NDQw";
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
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
                  Text("BRON AND HIS SEED LOOKING AT THE SKY IN UNISON", style: TextStyle(fontSize: 18),),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text("Triyog Shrestha", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                      SizedBox(width: 160,),
                      Text("Feb 6, 2023", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text("LeBron James surpassed Kareem Abdul-Jabbar for the NBA's all-time regular-season scoring record on February 7, 2023, by scoring 38 points against the Oklahoma City Thunder to reach 38,390 career points.  He also became the all-time leader in total points (regular season plus playoffs) by passing Abdul-Jabbar’s combined total of 44,149 in December 2025, finishing with 44,150 points in that milestone game.", style: TextStyle(fontSize: 12), textAlign: TextAlign.justify,),
                ],
              ),

            ),
              const Divider(),

            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Text("Related Videos"),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),
                      DashboardState().verticalListCard(size, "https://i.ytimg.com/vi/N4nfjhJN6SA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYciBZKDowDw==&rs=AOn4CLAMWVGKKPhBGY7DXrbwPOGK80T5Cw", "Young Thug, Yak Gotti, & Gunna - Take It To Trial (Official Music Video)", "Watch now", "18 Dec 2020"),


                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
