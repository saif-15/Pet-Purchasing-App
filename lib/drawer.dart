import 'package:flutter/material.dart';
import 'package:pet_purchasing_app/colors.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:mainBgColor,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: <Widget>[
                        Text("Saif Ul Haq",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("Acive now",style: TextStyle(
                          color: Colors.white30,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          letterSpacing: 1.2
                        ),)
                      ],
                    )

                  ],
                ),
                SizedBox(height: 100,),
                MenuItem(title:"Personal",icon:Icons.account_circle),
                SizedBox(height: 40,),
                MenuItem(title: "Favourites",icon: Icons.favorite,),
                SizedBox(height: 40,),
                MenuItem(title: "Messages",icon: Icons.email,),
                SizedBox(height: 40,),
                MenuItem(title: "Donation",icon: Icons.help,),
                SizedBox(height: 40,),
                MenuItem(title: "Contact us",icon: Icons.call,),
              ],

            ),
          ),
          Positioned(
            left: 20,
              bottom: 20,
              child: MenuItem(title: "Settings",icon: Icons.settings,))
        ],

      ),
    );
  }
}
class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  MenuItem({this.icon,this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon,color: Colors.white,size: 30,),
        SizedBox(width: 15,),
        Text(title,style: TextStyle(
          color: Colors.white,
          letterSpacing: 1.5
        ),)

      ],
    );
  }
}

