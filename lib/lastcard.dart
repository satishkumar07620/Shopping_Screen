// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
//https://www.cleanpng.com/

class lastcard extends StatefulWidget {
  const lastcard({super.key});

  @override
  State<lastcard> createState() => _lastcardState();
}

class _lastcardState extends State<lastcard> {
  List<Model12> list11 = [
    Model12(
      image: "assets/22.png",
      title: "BAKERY",
      color: Color(0xFFfdf6e6),
    ),
    Model12(
      image: "assets/egg.png",
      title: "DAIRY",
      color: Color(0xFFeef5e7),
    ),
    Model12(
      image: "assets/fv.png",
      title: "FRUIT & VEG",
      color: Color(0xFFfdefe6),
    ),
    Model12(
      image: "assets/dr.png",
      title: "DRINKS",
      color: Color(0xFFeae9ed),
    ),
    Model12(
      image: "assets/ice.png",
      title: "FROZEN",
      color: Color(0xFFfff0e9),
    ),
    Model12(
      image: "assets/jk.png",
      title: "CANS & JARS",
      color: Color(0xFFf8f8f8),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => Container(),
              ),
            ),
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => Container(),
              ),
            ),
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            label: 'Account',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 170, top: 20),
                    child: Text(
                      'HELLO JOHN',
                      style: TextStyle(
                        color: Colors.transparent,
                        shadows: [
                          Shadow(offset: Offset(0, -10), color: Colors.black),
                        ],
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromARGB(255, 243, 158, 106),
                        decorationThickness: 3,
                      ),
                    ),
                  ),
                  Column(
                    children: [],
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 55.0,
                    width: 55.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/pro.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.87,
                    height: MediaQuery.of(context).size.height * 0.22,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage('assets/ups.jfif'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 16),
                                child: Text(
                                  'YOUR KITCHEN \n NEEDS',
                                  style: TextStyle(
                                      color: Color(0xFFfffffc),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 26, top: 10),
                                child: Text(
                                  'Check out our \n Grocery section',
                                  style: TextStyle(
                                      color: Color(0xFFfffffc), fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                  left: 30,
                                ),
                                padding: EdgeInsets.only(
                                    left: 20, right: 22, bottom: 8, top: 8),
                                decoration: BoxDecoration(
                                  color: Color(0xFFf47429),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: Text(
                                  'SHOP NOW',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Browse by Categories',
                style: TextStyle(
                    color: Color.fromARGB(255, 127, 126, 126),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 275,
              child: GridView.builder(
                itemCount: list11.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 0),
                itemBuilder: (BuildContext content, int index) {
                  return Column(
                    children: [
                      Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                          color: list11[index].color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Image(
                            image: AssetImage(list11[index].image!),
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        list11[index].title!,
                        style: TextStyle(
                          color: Color.fromARGB(255, 85, 84, 84),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 12),
              padding: EdgeInsets.all(1.7),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Model12 {
  String? image;
  String? title;
  Color? color;
  Model12({required this.image, required this.title, required this.color});
}
