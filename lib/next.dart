// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, duplicate_ignore, avoid_unnecessary_containers, avoid_print

import 'package:day7task1/lastcard.dart';
import 'package:flutter/material.dart';
//satishimg901@gmail.com

//https://imagecolorpicker.com/
class nextpage extends StatefulWidget {
  const nextpage({
    super.key,
  });

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  List<TypeList> list = [
    TypeList(image: "assets/kiwi.jfif", title: "Kiwi Fruits", price: "Rs.160"),
    TypeList(image: "assets/123.png", title: "Apple", price: "Rs.90"),
    TypeList(image: "assets/kiwi.jfif", title: "Kiwi Fruits", price: "Rs.160"),
    TypeList(image: "assets/4.png", title: "Grapes", price: "Rs.500"),
    TypeList(image: "assets/cheese.png", title: "Apple", price: "Rs.500"),
    TypeList(image: "assets/apple.png", title: "Apple", price: "Rs.500"),
    TypeList(image: "assets/apple.png", title: "Apple", price: "Rs.500"),
  ];
  List<Model> list1 = [
    Model(
      image: "assets/1.png",
      title: "FRUITS",
    ),
    Model(
      image: "assets/2.2.png",
      title: "VEGITABLE",
    ),
    Model(
      image: "assets/3.1.png",
      title: "BAKERY",
    ),
    Model(
      image: "assets/4.png",
      title: "CHEESE",
    ),
    Model(
      image: "assets/per.png",
      title: "PERSONAL",
    ),
    Model(
      image: "assets/addicon.png",
      title: "",
    ),
  ];

  @override
  // void initState() {
  //   super.initState();

  // }

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
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => {},
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
              margin: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(7),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/pro.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, top: 10),
                    child: Text(
                      'HELLO JOHN',
                      style: TextStyle(
                        color: Colors.transparent,
                        shadows: [
                          Shadow(offset: Offset(0, -8), color: Colors.black),
                        ],
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.green,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.89,
              height: MediaQuery.of(context).size.height * 0.24,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFf57428),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: GridView.builder(
                itemCount: list1.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Image(
                        image: AssetImage(list1[index].image!),
                        height: 40,
                        width: 40,
                        fit: BoxFit.fill,
                      ),
                      //  child: Icon:Icons(list1[6].image!),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        list1[index].title!,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 22),
                  child: Text(
                    'Top Products',
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
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
            SizedBox(
              height: 5,
            ),
            Container(
              height: 170,
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.fromLTRB(1, 0, 20, 5),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(list[index].image!),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                list[index].title!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(list[index].price!),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10, top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.shopping_bag,
                                    color: Color(0xFFbdbdbd),
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Color(0xFFbdbdbd),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, left: 20),
                  child: Text(
                    'Promo Offers',
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(),
                    child: Text(
                      '>',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage('assets/33.jfif'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 15),
                                        child: Text(
                                          'LOWEST \n PRICES!',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Text(
                                            'on your favourite \n products',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'More Products',
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
                            builder: (context) => lastcard(),
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
  String? price;

  TypeList({required this.image, required this.title, required this.price});
}

class Model {
  String? image;
  String? title;
  Model({
    required this.image,
    required this.title,
  });
}
