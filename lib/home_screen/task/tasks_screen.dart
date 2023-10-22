import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/home_screen/task/taskweget.dart';
import '../../provider/list_provider.dart';


class Taskscreen extends StatelessWidget {
  const Taskscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Listprovider provider = Provider.of(context);
    provider.addtasktolist();
    return Column(
      children: [
        CalendarTimeline(
          initialDate:provider.selectdate,
          firstDate: DateTime.now().subtract(Duration(days: 5)),
          lastDate: DateTime.now().add(Duration(days: 365)),
          onDateSelected: (date){
            provider.changeselecteddate(date);
          },
          leftMargin: 20,
          monthColor: Colors.blueGrey,
          dayColor: Colors.teal[200],
          activeDayColor: Colors.white,
          activeBackgroundDayColor: Colors.redAccent[100],
          dotsColor: Colors.redAccent[100],
          selectableDayPredicate: (date) => date.day != 23,
          locale: 'en_ISO',
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context,index){
                return Taskwedgetitem(task: provider.tasklist[index]) ;
              },
            itemCount: provider.tasklist.length,
          ),
        )
      ],
    );
  }
}