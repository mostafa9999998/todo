import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/firebase/modules/task.dart';
import 'package:todo/provider/list_provider.dart';
import 'package:todo/theme/mytheme.dart';

class Taskwedgetitem extends StatelessWidget {

   Task task ;
   Taskwedgetitem({required this.task});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Mytheme.whitecolor
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 4,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(width: 8,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(task.title??'',style: Theme.of(context).textTheme.bodyLarge,),
                Text(task.descreption??'',style: Theme.of(context).textTheme.bodySmall,)
              ],
            ),
          ),
          Container(
            height: 40,
            width: 80,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Theme.of(context).primaryColor),
            child: Icon(Icons.check,color: Mytheme.whitecolor,),
          )
        ],
      ),
    );
  }
}
