import 'package:flutter/material.dart';

class Showbottomsheet extends StatefulWidget {
  Showbottomsheet({super.key});

  @override
  State<Showbottomsheet> createState() => _ShowbottomsheetState();
}

class _ShowbottomsheetState extends State<Showbottomsheet> {
  GlobalKey<FormState>  formkey = GlobalKey();
  DateTime date =DateTime.now();
  @override
  Widget build(BuildContext context) {
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
            addtask();
          },
              child:Text('Add',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 22  ),)
          )
        ],
      ),
    );
  }

  void addtask() {
if (formkey.currentState!.validate()){
  // add task to db
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
