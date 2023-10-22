import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/firebase/firebase_utels.dart';
import 'package:todo/firebase/modules/task.dart';
import 'package:todo/provider/list_provider.dart';

class Showbottomsheet extends StatefulWidget {
  Showbottomsheet({super.key});

  @override
  State<Showbottomsheet> createState() => _ShowbottomsheetState();
}

class _ShowbottomsheetState extends State<Showbottomsheet> {
  GlobalKey<FormState>  formkey = GlobalKey();
  DateTime date =DateTime.now();
  String? title ;
  String? description;
  late Listprovider provider;
  @override
  Widget build(BuildContext context) {
    provider =Provider.of(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: Text(
            'Add New Task',
            style: Theme.of(context).textTheme.titleMedium,
          )),
          Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter Task Title'),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'please enter title';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (text){
                      title=text;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Task Description',
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'please enter description';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (text){
                    description=text;
                  },
                    maxLines: 3,
                  )
                ],
              ),

          ),
          SizedBox(height: 20),
          Text('Select Date',style: Theme.of(context).textTheme.titleSmall,),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              showselectatae();
              setState(() {});
            },
            child: Center(
              child: Text('${date.year}/${date.month}/${date.day}',style: Theme.of(context).textTheme.titleSmall),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: (){
            addthetask();
          },
              child:Text('Add',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 22  ),)
          )
        ],
      ),
    );
  }

  void addthetask() {
if (formkey.currentState!.validate()){
  Task task=Task(title: title, descreption: description, date: date);
  FirebaseUtils.addtask(task);
  provider.addtasktolist();
  Navigator.pop(context);
}
  }

  void showselectatae() async{
    var chosendate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365))
    );
    if (chosendate !=null){
    date = chosendate;
    }
  }
}
