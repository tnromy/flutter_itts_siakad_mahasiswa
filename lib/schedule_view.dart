import 'package:flutter/material.dart';
import './schedule_model.dart';

class ScheduleView extends StatelessWidget {
  final scheduleM = ScheduleModel();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: scheduleM.schedules().asMap().entries.map((e) {
        return Container(
          margin: EdgeInsets.all(2),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 1,
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.all(5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/" + e.value["l_ava"]),
                  ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e.value["name"]),
                        Text(e.value["l_full_name"]),
                      ],
                    ),
                  ),
                  Text(e.value["schedule_time"]),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
