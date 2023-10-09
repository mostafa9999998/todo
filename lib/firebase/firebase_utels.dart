import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/firebase/modules/task.dart';

class FirebaseUtils {

  static CollectionReference<Task> collection(){
    return
  FirebaseFirestore.instance.collection(Task.tasksname).
  withConverter<Task>(
      fromFirestore:(snapshot,option) =>Task.fromjeson(snapshot.data()!),
      toFirestore: (task,option) => task.tojeson()
  );
 }


 static Future<void> addtask( Task task){
    var taskcollection = collection();
    var docs =taskcollection.doc();
    task.id = docs.id;
   return docs.set(task);
 }
}