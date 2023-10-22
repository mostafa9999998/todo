import 'package:flutter/material.dart';

class Mytheme {
 static const Color primarycolor =Color(0xff5D9CEC);
 static const Color backgroundcolor =Color(0xffddeada);
 static const Color graycolor =Color(0xff9ba4a9);
 static const Color greenycolor =Color(0xff61E757);
 static const Color whitecolor =Color(0xffffffff);
 static const Color blackcolor =Color(0xff303030);
 static const Color darkprimarycolor =Color(0xff5D9CEC);
 static const Color darkbackgroundcolor =Color(0xff060E1E);
 static const Color darkunselectedcolor = Color(0xffC8C9CB);

 static ThemeData lightmode(){
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: primarycolor,
        elevation: 0
      ),
      primaryColor: primarycolor,

      textTheme: TextTheme(
        titleLarge: TextStyle(
           color: whitecolor,
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),
        titleMedium:TextStyle(
            color: blackcolor,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
        titleSmall: TextStyle(
            color: blackcolor,
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),
        bodyLarge:  TextStyle(
            color: primarycolor,
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),
         bodySmall: TextStyle(
             color: blackcolor,
             fontSize: 16,

         ),
      ),
     scaffoldBackgroundColor: backgroundcolor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        unselectedItemColor: graycolor,
        selectedItemColor: primarycolor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primarycolor,
      ),
      dividerColor: primarycolor,
    );
  }
}
