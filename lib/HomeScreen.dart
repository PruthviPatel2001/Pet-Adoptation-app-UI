import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/screen2.dart';
import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xoffset=0;
  double yoffset=0;
  double scalefactor=1;
  bool isdraweropen=false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      
      transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scalefactor),
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(isdraweropen?40:0.0),
      ),
      duration: Duration(milliseconds: 250),


      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            SizedBox(height: 60,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  isdraweropen?IconButton(icon:  Icon(Icons.arrow_back_ios), onPressed:(){
                    setState(() {
                       xoffset=0;
                       yoffset=0;
                       scalefactor=1;
                       isdraweropen=false;
                    });
                  })

                  :IconButton(icon: Icon(Icons.menu),color: Colors.grey, onPressed:(){
                    setState(() {  //use for when we need to press button dynamicaly nd perform something
                          xoffset=200;
                          yoffset=140;
                          scalefactor=0.7;
                          isdraweropen=true;
                    });

                  },),
                  Column(
                    children: <Widget>[
                      Text("Location"),
                      Row(
                        children:<Widget> [
                          IconButton(icon: Icon(Icons.location_on),color: primarycolor, onPressed: () {

                          },),
                          Text("India"),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                          
                          backgroundColor: Colors.grey,
                          radius: 25.0,
                          backgroundImage: AssetImage("images/dog.png"),
    ),],

              ),
            ),
            Container(



                  child:TextField(

                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(

                         borderSide: BorderSide(color: Colors.transparent),
                         borderRadius: BorderRadius.all(Radius.circular(30)),

                      ),
                      focusedBorder: OutlineInputBorder(

                        borderSide: BorderSide(color: primarycolor),
                        borderRadius: BorderRadius.all(Radius.circular(30)),

                      ),
                      prefixIcon:Icon(Icons.search,color:primarycolor,),
                      hintText: "Search Pet",
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                 padding: EdgeInsets.fromLTRB(40, 60, 40, 40),


            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Container(

                    child: Column(

                      children: <Widget>[
                        Container(
                          
                          padding: EdgeInsets.all(4),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: ListShadow,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(categories[index]['iconpath'],height: 80,width: 80,),
                        ),
                        Text(categories[index]['name']),
                      ],
                    ),
                  );

              },
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) =>screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(color:Colors.blueGrey,borderRadius: BorderRadius.circular(20),boxShadow: ListShadow),
                             margin:EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                                tag: 1,
                                child: Image.asset('images/pet-cat1.png')),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container(

                      margin: EdgeInsets.only(top: 70,bottom: 10,),
                      decoration: BoxDecoration(color: Colors.white,
                      boxShadow: ListShadow,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),

                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[
                          SizedBox(height: 12,),


                          Row(


                            mainAxisAlignment: MainAxisAlignment.spaceBetween,


                            children: <Widget>[

                              Padding(padding: EdgeInsets.only(left:5),),
                              Text('Sola'),


                              IconButton(icon: Icon(Icons.mail,color:primarycolor), onPressed: () {

                              },),

                            ],

                          ),
                         // Padding(padding: EdgeInsets.only(left:5),),

                          Padding(
                            padding: const EdgeInsets.only(left:40),
                            child: Text('Abisian Cat',),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:40),
                            child: Text('2 years old'),
                          ),

                          SizedBox(height: 5,),

                          Row(

                            children: <Widget>[

                              IconButton(icon: Icon(Icons.location_on,color: primarycolor), onPressed: () {

                              },),

                              Text('Distance 2.6 km'),

                            ],

                          ),



                        ],

                      ),
                      //child: Text("     lucy"),
                    ),),
                  ],
                ),
              ),
            ),

         //caaaaaaattttttt2
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(color:Colors.orangeAccent,borderRadius: BorderRadius.circular(20),boxShadow: ListShadow),
                          margin:EdgeInsets.only(top: 50),
                        ),
                        Align(
                          child: Image.asset('images/pet-cat2.png'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    //height: 400,
                    margin: EdgeInsets.only(top: 70,bottom: 10,),
                    decoration: BoxDecoration(color: Colors.white,
                      boxShadow: ListShadow,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),

                    ),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[

                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left:5),),
                            Text('Oliver'),

                            IconButton(icon: Icon(Icons.mail,color:primarycolor), onPressed: () {

                            },),

                          ],

                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text('Abisian Cat'),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text('2 years old'),
                        ),

                        SizedBox(height: 10,),

                        Row(

                          children: <Widget>[

                            IconButton(icon: Icon(Icons.location_on,color: primarycolor), onPressed: () {

                            },),

                            Text('Distance 2.6 km'),

                          ],

                        ),



                      ],

                    ),

                    //child: Text("     lucy"),
                  ),),
                ],
              ),
            ),

         //caaaaattttt33333
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(color:Colors.redAccent,borderRadius: BorderRadius.circular(20),boxShadow: ListShadow),
                          margin:EdgeInsets.only(top: 50),
                        ),
                        Align(
                          child: Image.asset('images/pet-cat1.png'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    //height: 400,
                    margin: EdgeInsets.only(top: 70,bottom: 10,),
                    decoration: BoxDecoration(color: Colors.white,
                      boxShadow: ListShadow,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),

                    ),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[

                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left:5),),
                            Text('Milo'),

                            IconButton(icon: Icon(Icons.mail,color:primarycolor), onPressed: () {

                            },),

                          ],

                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text('Abisian Cat'),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text('2 years old'),
                        ),

                        SizedBox(height: 10,),

                        Row(

                          children: <Widget>[

                            IconButton(icon: Icon(Icons.location_on,color: primarycolor), onPressed: () {

                            },),

                            Text('Distance 2.6 km'),

                          ],

                        ),



                      ],

                    ),
                    //child: Text("     lucy"),
                  ),),
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}
