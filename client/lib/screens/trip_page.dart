import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TripPage extends StatefulWidget {
  const TripPage({Key? key}) : super(key: key);

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Trip",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5.0, bottom: 50.0),
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/Time2.png"),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Main Information",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 20.0),
            child: Row(children: [
              Icon(
                Icons.calendar_month_outlined,
                size: 20,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "18 March 2022, Friday",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    letterSpacing: 1.0),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 10.0),
            child: Row(children: [
              Icon(
                Icons.person,
                size: 20,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "2 Persons",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    letterSpacing: 1.0),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 10.0),
            child: Row(children: [
              Icon(
                Icons.arrow_upward,
                size: 20,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "One Way",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    letterSpacing: 1.0),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 60.0, bottom: 10.0),
            child: Text(
              "Schedule",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "6:00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Text(" -- "),
                Column(
                  children: [
                    Text(
                      "Saint Petersburg",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "St. Petersburg Coach Station",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "10:05",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                ),
                Text(" -- "),
                Column(
                  children: [
                    Text(
                      "Narwa",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Narwa Coach Station",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "10:43",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                ),
                Text(" -- "),
                Column(
                  children: [
                    Text(
                      "Johvi",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Johvi Coach station",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "12:30",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Text(" -- "),
                Column(
                  children: [
                    Text(
                      "Tallinn",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Tallinn Coach station",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 20.0),
            child: Row(
              children: [
                Text(
                  "Travel Time",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.alarm,
                  size: 22.0,
                ),
                Text(
                  "  6:30",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40.0, left: 15.0),
            child: Text(
              "Map Route",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
            child: Image.asset("assets/map.png"),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0, left: 15.0),
            child: Text(
              "Services",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0, left: 30.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/snowflake-svgrepo-com.svg",
                  width: 15.0,
                  height: 15.0,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Text(
                  "Air Conditioning",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 30.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/wc-sign-svgrepo-com.svg",
                  width: 15.0,
                  height: 15.0,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Text(
                  "Restroom",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 30.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/wifi-svgrepo-com.svg",
                  width: 15.0,
                  height: 15.0,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Text(
                  "Wifi",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 30.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/volt-svgrepo-com.svg",
                  width: 15.0,
                  height: 15.0,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Text(
                  "220V",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 30.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/usb-svgrepo-com.svg",
                  width: 15.0,
                  height: 15.0,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Text(
                  "USB 2.0",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 30.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/cup-with-hot-tea-svgrepo-com.svg",
                  width: 15.0,
                  height: 15.0,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Text(
                  "Hot Drinks",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 30.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/tv-svgrepo-com.svg",
                  width: 15.0,
                  height: 15.0,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Text(
                  "Lux TV",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40.0, left: 15.0),
            child: Text(
              "General Informtion",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0, left: 25.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/small-hand-bag-svgrepo-com.svg",
                  width: 25.0,
                  height: 25.0,
                ),
                SizedBox(
                  width: 30.0,
                ),
                Column(
                  children: [
                    Text(
                      "Carry-on Luggage Size",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "45 X 35 X 20 cm  (Less than 5Kg)",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 15.0),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 25.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/luggage-svgrepo-com.svg",
                  width: 25.0,
                  height: 25.0,
                ),
                SizedBox(
                  width: 30.0,
                ),
                Column(
                  children: [
                    Text(
                      "Trunk Luggage",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "70 X 30 X 55 cm  (Less than 30Kg)",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 15.0),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50.0, left: 15.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    Text(
                      "(inc. taxes)",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  "₹ 20",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 80.0,
                ),
                Text(
                  "for 2",
                  style: TextStyle(fontSize: 20.0),
                ),
                Icon(Icons.person),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: null,
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                "Pick your seat",
                style: TextStyle(
                    color: Colors.white,
                    height: 2.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
