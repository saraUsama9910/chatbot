import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: chatbot(),
  ));
}

class chatbot extends StatefulWidget {
  const chatbot({super.key});

  @override
  State<chatbot> createState() => _chatbotState();
}

class _chatbotState extends State<chatbot> {
  final List<String> imageList = [
    'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?cs=srgb&dl=background-blur-clean-531880.jpg&fm=jpg',
    'https://th.bing.com/th/id/OIP.VtyV1I7hrXKYkHVQUPkcfgHaEK?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/R.9e0510fce40905a7ce9b1dde63e69032?rik=WGxTdyWR5zsZ7g&riu=http%3a%2f%2ffc00.deviantart.net%2ffs70%2fi%2f2011%2f147%2f9%2fa%2fnight_sky_by_vectorday-d3hc4p8.jpg&ehk=0FOSGYP9O%2fPHW0csbrEm6XjglBrqsLdNs6bCHUWct4k%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.68acc506789f5d343c1280f3bc92475d?rik=dZDbqULavRoElQ&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f06%2fMacbook-Pro-13-Inch-HD-Wallpaper.jpg&ehk=RvWoWqG58SLfhLVYgqbu9PMxYPBBS0WkRqeEmZYMPjc%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/OIP.dowJnnydaFIDDTdR_C8kiwHaEo?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.oM5INDF08ka_cU7csjgSLgHaHa?rs=1&pid=ImgDetMain',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat-Bot'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 30),
        children: [
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: imageList
                  .map(
                    (e) => ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            e,
                            width: 1050,
                            height: 350,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const Divider(
            height: 50,
          ),
          Card(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Image.network(
              'https://th.bing.com/th?id=OIF.gqRXaSg%2bJHd0uJ17j0%2fVkQ&rs=1&pid=ImgDetMain',
              fit: BoxFit.fill,
              height: 150,
              width: 150,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 120,
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      'AI 4 Years',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 135,child: Divider(),),
                    Text('Dr.Ahmed Taha'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
