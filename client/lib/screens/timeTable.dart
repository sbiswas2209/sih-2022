import 'dart:io';

import 'package:client/main.dart';
import 'package:client/screens/trip_page.dart';
import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    int button1 = 0;
    int button2 = 0;
    int button3 = 0;
    int button4 = 0;
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
                    'Travel Time',
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
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: button1 == 1
                              ? MaterialStateProperty.all(Colors.orange)
                              : MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        onPressed: () {
                          button1++;
                          setState(() {
                            button1 = button1 % 2;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 70.0,
                              height: 20.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: const Text(
                                  " Time",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: button2 == 1
                              ? MaterialStateProperty.all(Colors.orange)
                              : MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        onPressed: () {
                          button2++;
                          setState(() {
                            button2 = button2 % 2;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 150.0,
                              height: 20.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: const Text(
                                  " Optimal Route",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: button3 == 1
                              ? MaterialStateProperty.all(Colors.orange)
                              : MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        onPressed: () {
                          button3++;
                          setState(() {
                            button3 = button3 % 2;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 70.0,
                              height: 20.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: const Text(
                                  " Cheap",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: button4 == 11
                              ? MaterialStateProperty.all(Colors.orange)
                              : MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        onPressed: () {
                          button4++;
                          setState(() {
                            button4 = button4 % 2;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 70.0,
                              height: 20.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: const Text(
                                  " Fast",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ])),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Image(image: AssetImage('assets/clock.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('6:00',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            )
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text('6:00',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Image(image: AssetImage('assets/small.png')),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saint Petersburg'),
                  SizedBox(height: 5),
                  Text('Bus Station'),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Travel Time'),
                ),
                SizedBox(height: 10),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image(
                      image: AssetImage('assets/clock1.png'),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text('12:30',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Image(image: AssetImage('assets/small.png')),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tallinn'),
                  SizedBox(height: 5),
                  Text('Bus Station'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Image(image: AssetImage('assets/clock.png')),
            ),
            SizedBox(
              width: 5,
            ),
            Text('6:00',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 35),
                child: TextButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.details_rounded),
                  label: Text('Detail'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                )),
            SizedBox(width: 20),
            Text('20',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text('2'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Image(image: AssetImage('assets/color.png')),
            ),
            SizedBox(width: 35),
            TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TripPage()));
              },
              icon: Icon(Icons.check),
              label: Text('TakeIt'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text('7:00',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Image(image: AssetImage('assets/small.png')),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saint Petersburg'),
                  SizedBox(height: 5),
                  Text('Bus Station'),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Text('Travel Time')),
                ),
                SizedBox(height: 10),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image(
                      image: AssetImage('assets/clock1.png'),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 3),
              child: Text('9:30',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Image(image: AssetImage('assets/small.png')),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tallinn'),
                  SizedBox(height: 5),
                  Text('Bus Station'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Image(image: AssetImage('assets/clock.png')),
            ),
            SizedBox(
              width: 5,
            ),
            Text('6:00',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Image(image: AssetImage('assets/warning.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Stop for 30 min',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(' 10:00',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Image(image: AssetImage('assets/small.png')),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Saint Petersburg'),
                SizedBox(height: 5),
                Text('Bus Station'),
              ],
            ),
          ),
        ]),
        SizedBox(height: 20),
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 45, top: 3),
            child: Text('13:30',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Image(image: AssetImage('assets/small.png')),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tallinn'),
                SizedBox(height: 5),
                Text('Bus Station'),
              ],
            ),
          ),
        ]),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 35),
                child: TextButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.details_rounded),
                  label: Text('Detail'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                )),
            SizedBox(width: 20),
            Text('20',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text('2'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Image(image: AssetImage('assets/color.png')),
            ),
            SizedBox(width: 35),
            TextButton.icon(
              onPressed: null,
              icon: Icon(Icons.check),
              label: Text('TakeIt'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
            )
          ],
        ),
        SizedBox(height: 20),
      ],
    ));
  }
}
