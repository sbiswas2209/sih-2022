import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 100, 0, 0),
          child: Center(
              child: Text('Create Account ',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ))),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Container(
              width: 175.0,
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: null,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20.0,
                      ),
                      SvgPicture.asset(
                        'assets/fbsignup.svg',
                        width: 15.0,
                        height: 20.0,
                        color: Colors.white,
                      ),
                      const Text(
                        "  Facebook",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
              height: 20,
            ),
            Container(
              width: 150.0,
              height: 50.0,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: null,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset(
                      'assets/twittersignup.svg',
                      width: 20.0,
                      height: 20.0,
                      color: Colors.white,
                    ),
                    const Text(
                      "  Twitter",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Center(
            child: Text('or continue with email',
                style: TextStyle(
                  fontSize: 17,
                ))),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: 'Username',
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: 'Your email',
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: 'Password',
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: 'Confirm Password',
            ),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: MaterialButton(
            color: Colors.orange,
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            minWidth: MediaQuery.of(context).size.width,
            shape: const StadiumBorder(
                side: BorderSide(width: 2, color: Colors.red)),
            child: const Text('SignUp',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            onPressed: null,
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
          child: Row(
            children: [
              Text('Already Have an account?',
                  style: TextStyle(
                    letterSpacing: 2,
                  )),
              TextButton(
                child: Text('Login',
                    style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                onPressed: null,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
