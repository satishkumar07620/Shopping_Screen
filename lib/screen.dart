// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, duplicate_ignore, avoid_unnecessary_containers, avoid_print

import 'package:day7task1/next.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List<TypeList> list = [
    TypeList(
      image: "assets/123.png",
      title: "FRUITS",
    ),
    TypeList(
      image: "assets/2.2.png",
      title: "VEGITABLE",
    ),
    TypeList(
      image: "assets/3.1.png",
      title: "BAKERY",
    ),
    TypeList(
      image: "assets/4.png",
      title: "CHEESE",
    ),
    TypeList(
      image: "assets/cheese.png",
      title: "PER",
    ),
    TypeList(
      image: "assets/apple.png",
      title: "APPLE",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0.0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0xFF645d5e),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xFF645d5e),
            ),
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
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Good Morning!',
                          style: TextStyle(
                            color: Color.fromARGB(255, 241, 155, 102),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Noto Sans N'Ko"
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'John Abrahm',
                          style: 
                          //GoogleFonts.sacramento(textStyle:TextStyle(fontSize: 44),),
                          TextStyle(
                            color: Color.fromARGB(255, 81, 80, 80),
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            // fontFamily: "Zeyada"
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.12,
                    width: MediaQuery.of(context).size.height * 0.06,
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
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(1),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.height * 0.5,
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
                                margin: EdgeInsets.only(left: 26, top: 8),
                                child: Text(
                                  'Check out our \n Grocery section',
                                  style: TextStyle(
                                      color: Color(0xFFfffffc), fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                  left: 25,
                                ),
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 22,
                                  bottom: 8,
                                  top: 8,
                                ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        color: Color.fromARGB(255, 112, 112, 112),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Noto Sans N'Ko"),
                  ),
                ),
                Container(
                  height: 40,
                  width: 90,
                  margin: EdgeInsets.only(right: 18),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Center(
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 120,
              child: ListView.builder(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image(
                              image: AssetImage(list[index].image!),
                              width: 50,
                              height: 50,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        list[index].title!,
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              width: MediaQuery.of(context).size.height * 0.5,
              height: MediaQuery.of(context).size.width * 0.35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, int index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      margin: EdgeInsets.only(left: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage('assets/33.jfif'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 15, right: 25, left: 10),
                                  child: Text(
                                    'LOWEST \n PRICES!',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10, left: 20),
                                  child: Text(
                                    'on your favourite \n products',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Top Products',
                    style: TextStyle(
                      color: Color.fromARGB(255, 130, 130, 130),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 90,
                  margin: EdgeInsets.only(right: 18),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => nextpage(),
                          ),
                        );
                      }),
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Color.fromARGB(255, 130, 130, 130),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TypeList {
  String? image;
  String? title;

  TypeList({
    required this.image,
    required this.title,
  });
}
