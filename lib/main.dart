import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo/home_screen/home.dart';
import 'package:todo/theme/mytheme.dart';

void main() async {
  // Web.
  await FirebaseFirestore.instance.enablePersistence();
  FirebaseFirestore.instance.settings = Settings(persistenceEnabled: false);
  FirebaseFirestore.instance.settings = Settings(cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
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

