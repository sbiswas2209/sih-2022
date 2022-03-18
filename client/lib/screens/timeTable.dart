import 'dart:io';

import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                tooltip: 'Increase volume by 10',
                onPressed: null,
              ),
            ),
            // SizedBox(
            //   width: 1,
            // ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text('Trip',
                  style: TextStyle(fontSize: 20, color: Colors.orange)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 30, 0, 0),
              child: Text('TimeTable',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(1000)),
                child: FlatButton(
                  child: Text(
                    'TimeTable',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  color: Colors.orange,
                  textColor: Colors.black,
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(width: 15),
            Text('Bus', style: TextStyle(fontSize: 15)),
            SizedBox(width: 15),
            Text('Seat', style: TextStyle(fontSize: 15)),
            SizedBox(width: 15),
            Text('Passenger', style: TextStyle(fontSize: 15)),
            SizedBox(width: 15),
            Text('Payment', style: TextStyle(fontSize: 15)),
          ],
        ),
        SizedBox(height: 20),
        Image(image: AssetImage('assets/line.png')),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          child: Text('Sorted By',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
      ],
    ));
  }
}
