import 'package:flutter/material.dart';

class Habit {
  final String title;
  final String day;
  final int habitCount;
  int completedHabit;

  Habit(this.title, this.day, this.habitCount, this.completedHabit);
}