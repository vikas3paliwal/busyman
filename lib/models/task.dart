import 'dart:convert';

import 'package:flutter/cupertino.dart';

enum Status { Ongoing, Pending, Upcoming, Completed }

class Task {
  String id;
  String taskName;
  String description;
  // String startDate;
  // String startTime;
  // String endDate;
  // String endTime;
  String category;
  List<String> workingFor;
  List<String> allocatedTo;
  List<String> reference;
  String location;
  String currentDateTime;
  // bool priority;
  // late Status status;
  // bool completed;
  Task(
      {required this.id,
      required this.allocatedTo,
      required this.category,
      required this.description,
      required this.reference,
      required this.taskName,
      required this.workingFor,
      required this.currentDateTime,
      required this.location});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // final jsonworking = jsonEncode(this.workingFor);
    // final jsonallocation = jsonEncode(this.workingFor);
    data['taskName'] = this.taskName;
    data['description'] = this.description;
    data['reference'] = this.reference;
    data['category'] = this.category;
    data['workingFor'] = workingFor;
    data['allocatedTo'] = allocatedTo;
    data['location'] = this.location;
    data['currentDateTime'] = this.currentDateTime;

    return data;
  }
}
