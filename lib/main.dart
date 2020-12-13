import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';


List<CameraDescription> cameras;

void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras=await availableCameras();
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false ,
    title: "WhatsApp-UI Clone",
    theme: ThemeData(
      primaryColor:Color(0xff075E54),
      accentColor: Color(0xff25D366),
    ),
    home: HomePage(cameras),

  ));
}