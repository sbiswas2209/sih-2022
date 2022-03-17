import 'package:client/screens/login_page.dart';
import 'package:flutter/material.dart';

class RegistrationOptionPage extends StatelessWidget {
  const RegistrationOptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/registration_bg.jpg"),
                      fit: BoxFit.cover)),
              child: null),
          Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: Text(
                    "Plan Your Trips",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Connect with other travellers",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 350.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    width: MediaQuery.of(context).size.width - 40.0,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.orange),
                      child: const Text(
                        "Log in",
                        style: TextStyle(color: Colors.white, height: 2.0),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 53.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0))),
                    width: MediaQuery.of(context).size.width - 40.0,
                    child: TextButton(
                      onPressed: null,
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(color: Colors.black, height: 2.15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
