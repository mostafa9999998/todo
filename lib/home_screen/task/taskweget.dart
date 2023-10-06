import 'package:flutter/material.dart';
import 'package:todo/theme/mytheme.dart';

class Taskwedgetitem extends StatelessWidget {
  const Taskwedgetitem({super.key});

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
                Text('play basketball',style: Theme.of(context).textTheme.bodyLarge,),
                Text('10:30 AM',style: Theme.of(context).textTheme.bodySmall,)
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
