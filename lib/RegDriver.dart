///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:flutterviz/LoginDriver.dart';



class RegDriver extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xff90caf9),
body:Align(
alignment:Alignment.center,
child:Padding(
padding:EdgeInsets.symmetric(vertical: 0,horizontal:16),
child:SingleChildScrollView(
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/BUS SYNC DRIVER.png"),
height:120,
width:120,
fit:BoxFit.cover,
),
Padding(
  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
child: Text(
"Sign Up Driver",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:40,
color:Color(0xff212121),
),
),
),
Padding(
  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
  child: TextField(
controller:TextEditingController(),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(22.0),
borderSide:BorderSide(
color:Color(0x00ffffff),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(22.0),
borderSide:BorderSide(
color:Color(0x00ffffff),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(22.0),
borderSide:BorderSide(
color:Color(0x00ffffff),
width:1
),
),
hintText:"Email",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0xffffffff),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
prefixIcon:Icon(Icons.mail,color:Color(0xff5e5c5c),size:24),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 30),
child:TextField(
controller:TextEditingController(),
obscureText:true,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(22.0),
borderSide:BorderSide(
color:Color(0x00ffffff),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(22.0),
borderSide:BorderSide(
color:Color(0x00ffffff),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(22.0),
borderSide:BorderSide(
color:Color(0x00ffffff),
width:1
),
),
hintText:"Password",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0xffffffff),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
prefixIcon:Icon(Icons.lock,color:Color(0xff5e5c5c),size:24),
suffixIcon:Icon(Icons.visibility,color:Color(0xff5e5c5c),size:24),
),
),
),
MaterialButton(
onPressed:() => {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginDriver()))
},
color:Color(0xffe1f5fe),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(22.0),
),
padding:EdgeInsets.all(16),
child:Text("Create Account", style: TextStyle( fontSize:16,
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xff4d4d4d),
height:50,
minWidth:MediaQuery.of(context).size.width,
),
Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
child:Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

Text(
"Already have an account?   ",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff212121),
),
),
MaterialButton(
onPressed:() => {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginDriver()))
},
color:Color(0xff01579b),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(50.0),
side:BorderSide(color:Color(0xff01579b),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Sign In", style: TextStyle( fontSize:14,
fontWeight:FontWeight.w600,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xffffffff),
height:40,
minWidth:100,
),
],
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