import 'package:client/screens/login_page.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
              child: Center(
                child: Text('Forgot Password',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomRight,
                    ),
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Center(
                child: Text(
                    ' Enter your email below to receive your \n           password reset instructions',
                    style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  hintText: 'Your Email',
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: MaterialButton(
                color: Colors.orange,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                minWidth: MediaQuery.of(context).size.width,
                shape: StadiumBorder(
                    side: BorderSide(width: 2, color: Colors.red)),
                child: Text('Send Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                onPressed: null,
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              child: const Text(
                "I remember the password",
                style: TextStyle(color: Colors.black, height: 2.15),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
