import 'package:flutter/material.dart';
import 'package:todo/home_screen/bottomsheet.dart';
import 'package:todo/home_screen/setting/setting_screen.dart';
import 'package:todo/home_screen/task/tasks_screen.dart';
import 'package:todo/theme/mytheme.dart';

class Home extends StatefulWidget {
  static const String homename='home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentstate = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('   To Do List',style: Theme.of(context).textTheme.titleLarge),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.list) ,
              label: ''
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.settings) ,
                label: ''
            ),
          ],
          currentIndex: currentstate,
          onTap: (index){
            currentstate = index;
            setState(() {});
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context)=>Showbottomsheet());
          },
        child: Icon(Icons.add),
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 3,color: Colors.white),
              borderRadius: BorderRadius.circular(100)
          )
       // shape:
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: taps[currentstate],
    );
  }
}
List taps =[Taskscreen(),Settingscreen()];