import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo/firebase/firebase_utels.dart';
import 'package:todo/firebase/modules/task.dart';

class Listprovider extends ChangeNotifier{
  List <Task> tasklist =[];

  DateTime selectdate = DateTime.now() ;

  void addtasktolist()async{
    QuerySnapshot<Task> collec =await FirebaseUtils.collection().get();
    tasklist = collec.docs.map((doc) {
      return doc.data();
    }).toList();
   tasklist=tasklist.where((task)  {
    if (task.date!.year==selectdate.year&&
        task.date!.month==selectdate.month&&
        task.date!.day==selectdate.day){
      return true;
    }else{
      return false;
    }
  }).toList();

   tasklist.sort(
     (Task task1, Task task2) {
      return task1.date!.compareTo(task2.date!);
     },
   );

    notifyListeners();
  }
void changeselecteddate(DateTime newdate){
    selectdate=newdate;
    notifyListeners();
}
}
