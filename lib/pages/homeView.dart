import 'package:flutter/material.dart';
import 'package:habit_tracker/habit.dart';

class HomeView extends StatelessWidget {
  final List<Habit> habitList = [
    Habit("YOGA", "TODAY", 3, 1),
    Habit("WORKOUT", "TODAY", 3, 2),
    Habit("CLEANING ROOM", "TODAY", 3, 3),
    Habit("SING SONG", "TODAY", 3, 1)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: habitList.length,
          itemBuilder: (BuildContext context, int index) => buildHabitCard(context, index)
      ),
    );
  }

  Widget buildHabitCard (BuildContext context, int index){
    final habit = habitList[index];
    return new Container(
      padding: EdgeInsets.fromLTRB(14, 4, 14, 4),
      height: 80,
      width: double.maxFinite,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))
        ),
        elevation: 5,
        color: Colors.blue,
        child: Column(
          children: <Widget>[

            Text(habit.title),
            Text(habit.day),
            Text((habit.habitCount).toString()),
            Text((habit.completedHabit).toString()),
          ],
        ),
      ),
    );
  }
}