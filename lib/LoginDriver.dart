///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:flutterviz/main.dart';
import 'package:flutterviz/Function/main1.dart';

class LoginDriver extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xff90caf9),
body:Align(
alignment:Alignment.center,
child:Padding(
padding:EdgeInsets.symmetric(vertical: 0,horizontal:20),
child:SingleChildScrollView(
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.min,
children: [
Align(
alignment:Alignment.center,
child:///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/BUS SYNC DRIVER.png"),
height:150,
width:150,
fit:BoxFit.contain,
),
),
  Padding(
    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
    child: Text(
      "    Bus Sync Driver",
      textAlign: TextAlign.start,
      overflow:TextOverflow.clip,
      style:TextStyle(
        fontWeight:FontWeight.w700,
        fontStyle:FontStyle.normal,
        fontSize:40,
        color:Color(0xff000000),
      ),
    ),
  ),
Padding(
padding:EdgeInsets.fromLTRB(0, 50, 0, 16),
child:TextField(
controller:TextEditingController(text:"example@gmail.com"),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffffffff),
),
decoration:InputDecoration(
disabledBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xffffffff),
width:2
),
),
focusedBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xffffffff),
width:2
),
),
enabledBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xffffffff),
width:2
),
),
labelText:"USERNAME",
labelStyle:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
hintText:"Enter Text",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0x00ffffff),
isDense:false,
contentPadding:EdgeInsets.all(0),
),
),
),
TextField(
controller:TextEditingController(text:"123456"),
obscureText:true,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffffffff),
),
decoration:InputDecoration(
disabledBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xffffffff),
width:2
),
),
focusedBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xffffffff),
width:2
),
),
enabledBorder:UnderlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xffffffff),
width:2
),
),
labelText:"PASSWORD",
labelStyle:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
hintText:"Enter Text",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0x00ffffff),
isDense:false,
contentPadding:EdgeInsets.all(0),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 30, 0, 0),
child:MaterialButton(
onPressed:() => {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyApp()))
},
color:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(24.0),
),
padding:EdgeInsets.all(16),
child:Text("SIGN IN", style: TextStyle( fontSize:16,
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xff000000),
height:45,
minWidth:MediaQuery.of(context).size.width,
),
),
],
),
),
),
),
)
;}
}