import 'package:flutter/material.dart';
import '../controller/apiCall.dart';
import 'detail.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {

  Widget horizontalListCard(Size size, String img, String title, String date) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => const Detail(),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: size.width / 1.5,
            height: size.height / 3.5,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                img,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.broken_image,
                      color: Colors.white,
                      size: 40,
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: size.width / 1.5,
            height: size.height / 3.5,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            bottom: 38,
            left: 18,
            child: SizedBox(
              width: size.width / 2.5,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Positioned(
            bottom: 19,
            left: 18,
            child: SizedBox(
              width: size.width / 1.5,
              child: Text(
                date,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const Positioned(
            bottom: 15,
            right: 14,
            child: Icon(
              Icons.play_circle_fill,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }

   Widget verticalListCard(Size size, String img, String title, String btntxt, String date) {
    return Row(
      children: [
        Row(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(img, fit: BoxFit.cover),
                  ),
                ),
                const Positioned(
                  top: 45,
                  right: 45,
                  child: Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width / 1.55,
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(btntxt, style: const TextStyle(fontSize: 10)),
                    ),
                    const SizedBox(width: 50),
                    Text(date, style: const TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiCall.getNewsData();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                horizontalListCard(size,
                    "https://picsum.photos/500",
                    "Digital Wallet Are The Killer App for Drizzy",
                    "June 6, 2008"
                ),
                horizontalListCard(size,
                    "https://picsum.photos/500",
                    "Digital Wallet Are The Killer App for Drizzy",
                    "June 6, 2008"
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticalListCard(
                      size,
                      "https://picsum.photos/500",
                      "Hello PCPS news channel happy dashain ggshfg",
                      "BBC News",
                      "02, Feb, 2026"
                  ),
                  verticalListCard(
                      size,
                      "https://picsum.photos/500",
                      "Hello PCPS news channel happy dashain ggshfg",
                      "BBC News",
                      "02, Feb, 2026"
                  ),verticalListCard(
                      size,
                      "https://picsum.photos/500",
                      "Hello PCPS news channel happy dashain ggshfg",
                      "BBC News",
                      "02, Feb, 2026"
                  ),verticalListCard(
                      size,
                      "https://picsum.photos/500",
                      "Hello PCPS news channel happy dashain ggshfg",
                      "BBC News",
                      "02, Feb, 2026"
                  ),verticalListCard(
                      size,
                      "https://picsum.photos/500",
                      "Hello PCPS news channel happy dashain ggshfg",
                      "BBC News",
                      "02, Feb, 2026"
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}