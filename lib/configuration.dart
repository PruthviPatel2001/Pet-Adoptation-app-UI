import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primarycolor=Color(0xff416d6d);

List<BoxShadow>ListShadow=[
  BoxShadow(color: Colors.grey[300],blurRadius: 30,offset: Offset(0,10))
];

List<Map>drawerItems=[
  {'icon':FontAwesomeIcons.paw,'title':'Adaption'},
  {'icon':Icons.mail_outline,'title':'Donation'},
  {'icon':FontAwesomeIcons.plus,'title':'Add Pet'},
  {'icon':Icons.favorite_border,'title':'Favorites'},
  {'icon':Icons.message,'title':'Write to us'},
  {'icon':FontAwesomeIcons.userAlt,'title':'Profile'},
];


List<Map> categories=[

  {'name':'Cats','iconpath':'images/cat.png'},
  {'name':'Dogs','iconpath':'images/dog.png'},
  {'name':'Horse','iconpath':'images/horse.png'},
  {'name':'Parrot','iconpath':'images/parrot.png'},
  {'name':'Rabbit','iconpath':'images/rabbit.png'},
];