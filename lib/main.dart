import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/home_screen/home.dart';
import 'package:todo/provider/list_provider.dart';
import 'package:todo/theme/mytheme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await FirebaseFirestore.instance.disableNetwork();
  //FirebaseFirestore.instance.settings = Settings(cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
  runApp(ChangeNotifierProvider(
      create: (context)=>Listprovider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:Home.homename ,
      routes: {
        Home.homename :(_)=>Home()
      },
      theme:Mytheme.lightmode(),
    );
  }
}

