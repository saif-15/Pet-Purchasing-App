import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pet_purchasing_app/colors.dart';
import 'package:pet_purchasing_app/model/pet.dart';

class AnimatedDrawer extends StatefulWidget {
  @override
  _AnimatedDrawerState createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawer> {
  Offset points = Offset(0.0, 0.0);
  var _scaleFactor = 1.0;
  var isOpen = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return AnimatedContainer(
      height: height,
      duration: Duration(milliseconds: 300),
      transform: Matrix4.translationValues(points.dx, points.dy, 0)
        ..scale(_scaleFactor),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40.0))),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: isOpen ? Icon(Icons.close) : Icon(Icons.menu),
                    color: mainBgColor,
                    onPressed: checkState,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Location",
                        style: TextStyle(
                            color: lightBgColor, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: mainBgColor,
                          ),
                          Text(
                            "Saif,",
                            style: TextStyle(
                                fontSize: 16,
                                color: mainBgColor,
                                letterSpacing: 1.1,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Pakistan",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: mainBgColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: lightMainBgColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      margin: EdgeInsets.all(30.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: lightBgColor,
                          ),
                          Text(
                            "Search for pets",
                            style: TextStyle(color: lightBgColor),
                          ),
                          Icon(
                            Icons.near_me,
                            color: lightBgColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return PetItems();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return PetCard(
                              image: listOfCats[index].imageAsset,
                              name: listOfCats[index].title,
                              color: listOfCats[index].color,
                            );
                          },
                          itemCount: listOfCats.length,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkState() {
    setState(() {
      if (!isOpen) {
        points = Offset(250.0, 100.0);
        _scaleFactor = 0.8;
        isOpen = true;
      } else {
        points = Offset(0.0, 0.0);
        _scaleFactor = 1.0;
        isOpen = false;
      }
    });
  }
}

class PetItems extends StatelessWidget {
  final String image;
  final String title;

  PetItems({this.image, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            width: 100.0,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text("Cats")
        ],
      ),
    );
  }
}

class PetCard extends StatelessWidget {
  final String name;
  final String image;
  final Color color;

  const PetCard({Key key, this.name, this.image, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20,right: 20),
            height: 200,
            margin: EdgeInsets.only(left: 15.0, top: 25, right: 15.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name,style: TextStyle(
                  color: mainBgColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 15),
            width: 200,
            height: 230,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          Container(
              margin: EdgeInsets.only(left: 20,bottom: 40),
              child:
              Image.asset(image)
          )
        ],
      ),
    );
  }
}
