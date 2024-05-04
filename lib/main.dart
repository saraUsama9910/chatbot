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
    'https://www.hu.edu.eg/wp-content/uploads/2018/10/HU-113-1024x683.jpg',
    'https://www.hu.edu.eg/wp-content/uploads/2021/09/IMG_9653-min-1024x683.jpg',
    'https://www.hu.edu.eg/wp-content/uploads/2018/06/admission14-e1586056827220.jpg',
    'https://www.hu.edu.eg/wp-content/uploads/2018/05/JobLand6-e1586056692386.jpg',
    'https://www.hu.edu.eg/wp-content/uploads/2022/08/Banner-1536x488.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heliopolis University'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('HU'),
              accountEmail: const Text('sarausama80@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Image.network(
                  'https://yt3.ggpht.com/3L6NH7UvuyBUWjPsAFC-7K5UIiN-0nBAB_ZqR3FM3gSGR7oj7cJKkdR2RPFbuKFeuQTtpLhS=s88-c-k-c0x00ffffff-no-rj',
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 30),
        children: [
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: false,
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
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Image.network(
              'https://www.hu.edu.eg/wp-content/uploads/2019/08/engineering.jpg',
              fit: BoxFit.fill,
              height: 170,
              width: 120,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 220,
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Faculty of Engineering',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Divider(),
                    ),
                    Text('Dr.Mohamed Taha'),
                    SizedBox(
                      width: 100,
                      child: Divider(),
                    ),
                    Text(
                      'The Faculty of Engineering is fostering responsibility for innovative technical implementation by addressing the burning issues related to the environment',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Image.network(
              'https://www.hu.edu.eg/wp-content/uploads/2021/12/business.jpg',
              fit: BoxFit.fill,
              height: 170,
              width: 120,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 220,
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Faculty of Business and Economics',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Divider(),
                    ),
                    Text('Dr.Ahmed Taha'),
                    SizedBox(
                      width: 100,
                      child: Divider(),
                    ),
                    Text(
                      'The Faculty of Business and Economics is at the forefront of innovative and alternative models applied in business and economics. We are committed to fostering a system that is simultaneously ethical, successful, and competitive',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Image.network(
              'https://www.hu.edu.eg/wp-content/uploads/2019/08/pharmacy.jpg',
              fit: BoxFit.fill,
              height: 170,
              width: 120,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 220,
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Faculty of Pharmacy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Divider(),
                    ),
                    Text('Dr.Ahmed Hagag'),
                    SizedBox(
                      width: 100,
                      child: Divider(),
                    ),
                    Text(
                      'The Faculty of Pharmacy complements the Egyptian pharmaceutical sector and society with capable and skilled graduates who are dedicated to the improvement of pharmaceutical services and facilities. ',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Image.network(
              'https://www.hu.edu.eg/wp-content/uploads/2019/08/physical-therapy.jpg',
              fit: BoxFit.fill,
              height: 170,
              width: 120,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 220,
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Faculty of Physical Therapy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Divider(),
                    ),
                    Text('Dr.Malek'),
                    SizedBox(
                      width: 100,
                      child: Divider(),
                    ),
                    Text(
                      'Faculty of Physical Therapy pioneers a state-of-the art approach towards teaching and researching the field of Physiotherapy that heals and integrates the mind, body, and energy of the patients .',
                    ),
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
