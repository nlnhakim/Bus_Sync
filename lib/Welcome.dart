///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:flutterviz/RegDriver.dart';
import 'package:flutterviz/RegUser.dart';


class Welcome extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xfffebc9d),
body:Padding(
padding:EdgeInsets.all(16),
child:
Column(
mainAxisAlignment:MainAxisAlignment.spaceAround,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/f6f81ba9656e4f27024c1bfad6db86bc1-1.png"),
height:360,
width:360,
fit:BoxFit.cover,
),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 0, 0),
child:Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

Text(
"Welcome!",
textAlign: TextAlign.left,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:60,
color:Color(0xffFFFFFF),
),
),
Padding(
padding:EdgeInsets.fromLTRB(8, 0, 0, 0),
child:Text(
"",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xffffffff),
),
),
),
],),),
],),

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
MaterialButton(
onPressed:() => {
Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RegUser()))
},
color:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(22.0),
),
padding:EdgeInsets.all(16),
child:Text("USER", style: TextStyle( fontSize:16,
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xff5e5c5c),
height:60,
minWidth:MediaQuery.of(context).size.width,
),
Padding(
padding:EdgeInsets.fromLTRB(0, 30, 0, 0),
child:MaterialButton(
onPressed:() => {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RegDriver()))
},
color:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(22.0),
),
padding:EdgeInsets.all(16),
child:Text("DRIVER", style: TextStyle( fontSize:16,
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xff5e5c5c),
height:60,
minWidth:MediaQuery.of(context).size.width,
),
),
],),
],),),
)
;}
}