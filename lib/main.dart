import 'package:flutter/material.dart';
import 'package:todo/home_screen/home.dart';
import 'package:todo/theme/mytheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:Home.homename ,
      routes: {
        Home.homename :(_)=>Home()
      },
      theme:Mytheme.lightmode() ,
    );
  }
}

