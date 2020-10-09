import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/configuration.dart';


class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
              child:Column(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        color: Colors.blueGrey,
                      ),
                  ),

                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),


                ],
              )
          ),

          Container(
            margin: EdgeInsets.only(top:50),
            child: Align(

              alignment: Alignment.topCenter,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 IconButton(icon:  Icon(Icons.arrow_back_ios),color: Colors.white,onPressed: (){
                   Navigator.pop(context);
                 },),
                  IconButton(icon:  Icon(Icons.share),color: Colors.white,onPressed: (){

                  },),
                ],
              )
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 80),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                  tag: 1,
                  child: Image.asset('images/pet-cat1.png',scale: 0.8,)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                boxShadow: ListShadow,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[

                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left:2),),
                      Text('Sola',style: TextStyle(color: primarycolor,fontSize: 30,fontWeight: FontWeight.bold),),

                      IconButton(icon: Icon(Icons.mail_outline,color:primarycolor), onPressed: () {

                      },),

                    ],

                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:120),
                    child: Text('Abisian Cat',style: TextStyle(color: primarycolor,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 90,),
                    child: Text('2 years old Female',style: TextStyle(color: primarycolor,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),

                  SizedBox(height: 10,),

                  Row(

                    children: <Widget>[
                      //Padding(padding: const EdgeInsets.only(left: 0),),
                      IconButton(icon: Icon(Icons.location_on,color: primarycolor), onPressed: () {

                      },),

                      Text('Buliding No.10,Sriman colony nr.ulas bus stop-390045',style: TextStyle(color: primarycolor,fontSize: 12,fontWeight: FontWeight.bold),),

                    ],

                  ),


                ],

              ),

            ), //main
          ),


          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              height: 150,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(left: 30),

                    child: Icon(Icons.favorite_border,color: Colors.white,),
                    decoration: BoxDecoration(
                        color: primarycolor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  SizedBox(width: 50,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10,right: 30),

                      height: 50,
                      width: 50,

                      child:
                      Center(child: Text('Adaption',style: TextStyle(color: Colors.white,), )),
                      decoration: BoxDecoration(
                          color: primarycolor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ],

              ),

              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
