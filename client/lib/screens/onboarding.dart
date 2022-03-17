import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/onboarding.png'),
                  fit: BoxFit.cover)),
          child: null,
        ),
        Column(children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Text(
              ' Lets \n Discover \n New World !!!',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 0, 200, 0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              width: MediaQuery.of(context).size.width - 200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  child: const Text(
                    "Lets Go",
                    style: TextStyle(color: Colors.white, height: 2.0),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ],
    ));
  }
}
