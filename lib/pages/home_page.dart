import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Cars",
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.red,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: double.infinity,
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _categoriyaItem(true, "All"),
                _categoriyaItem(false, "Red"),
                _categoriyaItem(false, "Blue"),
                _categoriyaItem(false, "Green"),
                _categoriyaItem(false, "Yellow"),
                _categoriyaItem(false, "Black"),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  _cardItem(
                      "Ferrari", "1300\$", "Electric", "assets/images/car.jpg"),
                  _cardItem(
                      "Ferrari", "1300\$", "Electric", "assets/images/car.jpg"),
                  _cardItem(
                      "Ferrari", "1300\$", "Electric", "assets/images/car.jpg"),
                  _cardItem(
                      "Ferrari", "1300\$", "Electric", "assets/images/car.jpg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _categoriyaItem(bool isActive, String name) {
  return AspectRatio(
    aspectRatio: 3.6 / 1.4,
    child: Container(
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: isActive ? Colors.red : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Text(
          name,
          style: TextStyle(color: isActive ? Colors.white : Colors.black),
        ),
      ),
    ),
  );
}

Widget _cardItem(String name, String price, String tipe, String img) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img)),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black45,
                Colors.black38,
                Colors.black26,
              ]),
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    tipe,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Text(
                price,
                style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w500),
              ),
              Spacer(),
               CircleAvatar(
                backgroundColor: Colors.red,
                 child: Icon(
                  Icons.favorite_border,
                  size: 35,
                  color: Colors.white,
                             ),
               )
            ],
          ),
        ),
      ),
    ),
  );
}
