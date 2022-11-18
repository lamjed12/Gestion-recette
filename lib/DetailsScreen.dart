import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_recipes_app_ui/constant.dart';

class DetailsScreen extends StatefulWidget {
  final int index;
  final String name, image;
  final bool tags;
  DetailsScreen(this.index, this.name, this.image, this.tags);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KLightColor,
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          height: 58.0,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 42.0),
          decoration: BoxDecoration(
            color: KOangeColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28.0),
              topRight: Radius.circular(28.0),
            ),
          ),
          
          child: Text(
            "Back",
            style: TextStyle(
              fontSize: 24.0,
              fontFamily: "HellixBold",
              color: KLightColor,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 64.0,
            left: 28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 28.0),
                  decoration: BoxDecoration(
                    color: KOangeColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 36.0,
                    fontFamily: "HellixBold",
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "\$",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "HellixBold",
                        color: KOangeColor,
                      ),
                    ),
                    TextSpan(
                      text: "250.25",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontFamily: "HellixBold",
                        color: KOangeColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "calories",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontFamily: "HellixBold",
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "120 calories",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "HellixBold",
                            ),
                          ),
                          SizedBox(height: 36.0),
                          Text(
                            "Time",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontFamily: "HellixBold",
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "10 mins",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "HellixBold",
                            ),
                          ),
                          SizedBox(height: 36.0),
                          Text(
                            "Total Serve",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontFamily: "HellixBold",
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "1 Serving",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "HellixBold",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Hero(
                      tag: widget.tags
                          ? "fresh${widget.index}"
                          : "recommend${widget.index}",
                      child: Image.asset(
                        widget.image,
                        height: 250.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(
                  right: 28.0,
                  bottom: 28.0,
                ),
                child: Text(
                  "15:12 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                    fontFamily: "HellixBold",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
