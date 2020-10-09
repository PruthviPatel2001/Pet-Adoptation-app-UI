import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding:EdgeInsets.only(top: 50,left: 20) ,
      color: primarycolor,
      child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween ,

        children: <Widget>[
          Row(
            children: [
              CircleAvatar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(''),
                  Text('Pruthvi Patel',style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text('Active Status',style: TextStyle(color: Colors.green,fontSize: 20),),

                ],
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.only(top: 5),
            child: Column(


                children:drawerItems.map((element) => Row(
                  children: <Widget>[

                    Icon(element['icon'],color: Colors.white,size: 20,),
                    SizedBox(height: 20,),
                    Padding(padding: EdgeInsets.only(top: 70)),
                    Text(element['title'],style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),

                  ],
                ),).toList()

            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(

              children: <Widget>[
               IconButton(icon:  Icon(Icons.settings),color: Colors.white, onPressed:(){

             }),


                Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(width: 10,),
                Container(
                  width: 2,
                  height: 20,
                  color: Colors.white,

                ),
                SizedBox(width: 10,),
                Text('Log-Out',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
