import 'package:client/screens/createAccount.dart';
import 'package:client/screens/forgotPassword.dart';
import 'package:client/screens/home_screen..dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool _passwordVisible = false;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30.0),
            child: const Center(
              child: Text(
                "Log in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                          'assets/facebook-f-brands.svg',
                          width: 20.0,
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
                          'assets/icons8-twitter.svg',
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
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Center(
                child: Text(
              "or login with email",
              style: TextStyle(letterSpacing: 2.0),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                hintText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: TextField(
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 200.0, right: 20.0),
            child: TextButton(
              child: const Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassword()));
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            width: MediaQuery.of(context).size.width - 40.0,
            height: 50.0,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                "Log in",
                style: TextStyle(color: Colors.white, height: 2.0),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            child: TextButton(
              child: Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: null,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                width: MediaQuery.of(context).size.width - 40.0,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.black, height: 2.15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
