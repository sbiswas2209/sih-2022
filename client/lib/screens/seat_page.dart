import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeatPage extends StatefulWidget {
  const SeatPage({Key? key}) : super(key: key);

  @override
  State<SeatPage> createState() => _SeatPageState();
}

var _chairStatus = [
  [1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 3, 1, 1],
  [1, 1, 1, 1, 1, 3, 3],
  [2, 2, 2, 1, 3, 1, 1],
  [1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1],
];

class _SeatPageState extends State<SeatPage> {
  Widget selectedChair(int a, int b) {
    return InkWell(
      onTap: () {
        _chairStatus[a][b] = 1;
        setState(() {});
      },
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(3.0)),
      ),
    );
  }

  Widget availableChair(int a, int b) {
    return InkWell(
      onTap: () {
        _chairStatus[a][b] = 2;
        setState(() {});
      },
      child: Container(
        height: 40.0,
        width: 10.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          border: Border.all(
            color: Color.fromRGBO(0, 0, 0, 1),
            width: 1,
          ),
        ),
      ),
    );
  }

  Widget reservedChair() {
    return Container(
      height: 40.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: Color.fromRGBO(15, 15, 15, 0.24),
          borderRadius: BorderRadius.circular(3.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Seat",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Text(
              "Pick your Seat",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.only(left: 15.0, top: 20.0),
          ),
          Container(
              padding: EdgeInsets.only(top: 20.0, left: 25.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 35.0,
                    height: 28.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Reserved",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  const SizedBox(
                    width: 35.0,
                    height: 28.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(width: 1.0),
                              top: BorderSide(width: 1.0),
                              left: BorderSide(width: 1.0),
                              right: BorderSide(width: 1.0))),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Vacant",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  const SizedBox(
                    width: 35.0,
                    height: 28.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.green),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "your seat",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                  ),
                ],
              )),
          for (int i = 0; i < 9; i++)
            Container(
              margin: EdgeInsets.only(top: i == 0 ? 50 : 0),
              child: Row(
                children: <Widget>[
                  for (int x = 1; x < 7; x++)
                    Expanded(
                      child: (x == 3) || (x == 4)
                          ? Container()
                          : Container(
                              margin: EdgeInsets.all(5),
                              child: _chairStatus[i][x - 1] == 1
                                  ? availableChair(i, x - 1)
                                  : _chairStatus[i][x - 1] == 2
                                      ? selectedChair(i, x - 1)
                                      : reservedChair(),
                            ),
                    ),
                ],
              ),
            ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40.0, left: 15.0),
                child: Text(
                  "Your Seats: ",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, top: 40.0),
                child: Text(
                  "1",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.green),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0, top: 40.0),
                child: SvgPicture.asset(
                  "assets/sitting-chair-sit-wait-svgrepo-com.svg",
                  width: 25.0,
                  height: 25.0,
                  color: Colors.green,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, top: 40.0),
                child: Text(
                  "2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.green),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0, top: 40.0),
                child: SvgPicture.asset(
                  "assets/sitting-chair-sit-wait-svgrepo-com.svg",
                  width: 25.0,
                  height: 25.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            width: MediaQuery.of(context).size.width - 40.0,
            height: 50.0,
            child: TextButton(
              onPressed: null,
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                "Passenger Details",
                style: TextStyle(
                    color: Colors.white,
                    height: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
