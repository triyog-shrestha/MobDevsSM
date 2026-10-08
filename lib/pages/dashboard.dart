import 'package:flutter/material.dart';
import 'detail.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {

  horizonatlistcard(size, String img, String title, String date){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (context) => Detail(),
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
                style: TextStyle(
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
                style: TextStyle(
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
  verticallistcard(size, String img, String title, String btntxt, String date){
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
                  child: ClipRRect(borderRadius: BorderRadiusGeometry.circular(20), child: Image.network(fit: BoxFit.cover, img)),
                ),
                Positioned(top:40, right:35 ,child: Icon(Icons.play_circle_fill, color: Colors.white, size: 30, )),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: size.width / 1.55,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(height: 8),
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(btntxt, style: TextStyle(fontSize: 10)),
                    ),

                    SizedBox(width: 50,),

                    Text(date, style: TextStyle(fontSize: 12),),
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
                horizonatlistcard(size,
                    "https://imgs.search.brave.com/tu80peDDYz46QJ-k5hQt-xJBiKLPdXDaWtkdTw-6rH8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/YXVkaW8tY3JlYXRp/b24vdmlzdWFscy1z/b25ncy53ZWJw",
                    "Digital Wallet Are The Killer App for Drizzy",
                    "June 6, 2008"
                ),
                horizonatlistcard(size,
                    "https://imgs.search.brave.com/tu80peDDYz46QJ-k5hQt-xJBiKLPdXDaWtkdTw-6rH8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/YXVkaW8tY3JlYXRp/b24vdmlzdWFscy1z/b25ncy53ZWJw",
                    "Digital Wallet Are The Killer App for Drizzy",
                    "June 6, 2008"
                ),horizonatlistcard(size,
                    "https://imgs.search.brave.com/tu80peDDYz46QJ-k5hQt-xJBiKLPdXDaWtkdTw-6rH8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/YXVkaW8tY3JlYXRp/b24vdmlzdWFscy1z/b25ncy53ZWJw",
                    "Digital Wallet Are The Killer App for Drizzy",
                    "June 6, 2008"
                ),horizonatlistcard(size,
                    "https://imgs.search.brave.com/tu80peDDYz46QJ-k5hQt-xJBiKLPdXDaWtkdTw-6rH8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/YXVkaW8tY3JlYXRp/b24vdmlzdWFscy1z/b25ncy53ZWJw",
                    "Digital Wallet Are The Killer App for Drizzy",
                    "June 6, 2008"
                ),horizonatlistcard(size,
                    "https://imgs.search.brave.com/tu80peDDYz46QJ-k5hQt-xJBiKLPdXDaWtkdTw-6rH8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/YXVkaW8tY3JlYXRp/b24vdmlzdWFscy1z/b25ncy53ZWJw",
                    "Digital Wallet Are The Killer App for Drizzy",
                    "June 6, 2008"
                ),


              ],
            ),
          ),

          Container(
            height: size.height/1.75,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticallistcard(
                      size,
                      "https://imgs.search.brave.com/GO8ZB_gMZoE28uWTwsOjitIQ-cvL5jrv1h_8nqpyG_g/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/c29jaWFsLW1lZGlh/L29uLWJyYW5kLndl/YnA",
                      "Hello PCPS news channel happy dashain ggshfg",
                      "BBC News",
                      "02, Feb, 2026"
                  ),
                  verticallistcard(
                      size,
                      "https://imgs.search.brave.com/GO8ZB_gMZoE28uWTwsOjitIQ-cvL5jrv1h_8nqpyG_g/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/c29jaWFsLW1lZGlh/L29uLWJyYW5kLndl/YnA",
                      "Hello PCPS news channel happy dashain ggshfg",
                      "BBC News",
                      "02, Feb, 2026"
                  ),verticallistcard(
                      size,
                      "https://imgs.search.brave.com/GO8ZB_gMZoE28uWTwsOjitIQ-cvL5jrv1h_8nqpyG_g/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/c29jaWFsLW1lZGlh/L29uLWJyYW5kLndl/YnA",
                      "Hello PCPS news channel happy dashain ggshfg",
                      "BBC News",
                      "02, Feb, 2026"
                  ),verticallistcard(
                      size,
                      "https://imgs.search.brave.com/GO8ZB_gMZoE28uWTwsOjitIQ-cvL5jrv1h_8nqpyG_g/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/c29jaWFsLW1lZGlh/L29uLWJyYW5kLndl/YnA",
                      "Hello PCPS news channel happy dashain ggshfg",
                      "BBC News",
                      "02, Feb, 2026"
                  ),verticallistcard(
                      size,
                      "https://imgs.search.brave.com/GO8ZB_gMZoE28uWTwsOjitIQ-cvL5jrv1h_8nqpyG_g/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4t/ZnJvbnQuZnJlZXBp/ay5jb20vaG9tZS9h/bm9uLXJ2bXAvY3Jl/YXRpdmUtc3VpdGUv/c29jaWFsLW1lZGlh/L29uLWJyYW5kLndl/YnA",
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


