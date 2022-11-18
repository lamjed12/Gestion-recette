//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_recipes_app_ui/DetailsScreen.dart';
import 'package:food_recipes_app_ui/constant.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool tag = false;
  List frechList = [
    {"image": "images/food1.jpg", "name": "Asian Glazed Chicken Thighs"},
    {"image": "images/food2.jpg", "name": "Blueberry Muffins"},
    {"image": "images/food1.jpg", "name": "Asian Glazed Chicken Thighs"},
    {"image": "images/food2.jpg", "name": "Blueberry Muffins"}
  ];
  List recommandedList = [
    {"image": "images/food3.jpg", "name": "French Toast With Berries"},
    {"image": "images/food4.jpg", "name": "Glazed Salmon"},
    {"image": "images/food5.jpg", "name": "Cherry Clafoutis"},
    {"image": "images/food3.jpg", "name": "French Toast With Berries"},
    {"image": "images/food4.jpg", "name": "Glazed Salmon"},
    {"image": "images/food5.jpg", "name": "Cherry Clafoutis"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KLightColor,
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(top: 80.0, left: 16.0, right: 16.0, bottom: 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => print("Menu"),
                    child: Image.asset("assets/icons/menu.png", height: 16.0),
                  ),
                  GestureDetector(
                    onTap: () => print("Notification"),
                    child: Image.asset("assets/icons/notification.png",
                        height: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 12.0),
              Text(
                "Bonjour Lamjed",
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              SizedBox(height: 12.0),
              Text(
                "What would you like to cook today ?",
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "HellixBold",
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: KPrimaryColor,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextField(
                        cursorColor: KDarkColor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 34.0,
                          ),
                          hintText: "Search for recipes",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  GestureDetector(
                    onTap: () => print("Filter"),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18.0,
                        horizontal: 18.0,
                      ),
                      decoration: BoxDecoration(
                        color: KPrimaryColor,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Image.asset(
                        "assets/icons/settings.png",
                        height: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Fresh Recipes",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: "HellixBold",
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print("See All Fresh Recipes"),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: KOangeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Container(
                height: 240.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: frechList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            index,
                              frechList[index]["name"],
                              frechList[index]["image"], tag = true),
                        ),
                      ),
                      child: Container(
                        height: 240.0,
                        width: 200.0,
                        margin: EdgeInsets.only(right: 32.0),
                        decoration: BoxDecoration(
                          color: KPrimaryColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Stack(
                          // overflow: Overflow.visible,
                          children: [
                            Positioned(
                              top: 16.0,
                              left: 16.0,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                            ),
                            Positioned(
                              top: 16.0,
                              right: -32.0,
                              child: Hero(
                                  tag: "fresh$index",
                                  child:
                                      Image.asset(frechList[index]["image"])),
                            ),
                            Positioned(
                              top: 110.0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Breakfast",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: KBlueColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Container(
                                      width: 180.0,
                                      child: Text(
                                        frechList[index]["name"],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: "HellixBold"),
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          color: KOangeColor,
                                          size: 16.0,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      "120 Calories",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: KOangeColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              color: Colors.grey,
                                              size: 14.0,
                                            ),
                                            SizedBox(width: 8.0),
                                            Text(
                                              "10 mins",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 32.0),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/icons/bell.png",
                                              height: 14.0,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(width: 8.0),
                                            Text(
                                              "1 Serving",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: "HellixBold",
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print("See All Recommended"),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: KOangeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: recommandedList.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          index,
                            recommandedList[index]["name"],
                            recommandedList[index]["image"], tag = false),
                      ),
                    ),
                    child: Container(
                      height: 120.0,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                        //SUPPORT DU RUN12.12
                        horizontal: 2.0,
                        vertical: 2.0,
                      ),
                      margin: EdgeInsets.only(bottom: 16.0),
                      decoration: BoxDecoration(
                        color: KPrimaryColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          Hero(
                            tag: "recommend$index",
                            child: Image.asset(
                              recommandedList[index]["image"],
                              height: 180.0,
                              width: 120.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Breakfast",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: KBlueColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 6.0),
                                  Text(
                                    recommandedList[index]["name"],
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: "HellixBold",
                                    ),
                                  ),
                                  SizedBox(height: 6.0),
                                  Row(
                                    children: [
                                      Row(
                                        children: List.generate(
                                          5,
                                          (index) => Icon(
                                            Icons.star,
                                            color: KOangeColor,
                                            size: 16.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 6.0),
                                      Text(
                                        "120 Calories",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: KOangeColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 6.0),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time,
                                            color: Colors.grey,
                                            size: 14.0,
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(
                                            "10 mins",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 32.0),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/icons/bell.png",
                                            height: 14.0,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(
                                            "1 Serving",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 28.0,
                              width: 35.0,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
