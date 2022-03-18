import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/screens/TravelSite.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int button1 = 0;
  int button2 = 0;
  int button3 = 0;
  int button4 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.gps_fixed_rounded,
              color: Colors.orange,
              size: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                "Chennai, Tamil Nadu",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 15.0),
              ),
            ),
            Image.asset('assets/Avatar.png'),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Hi Traveller ,",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 15.0),
            child: Text(
              "Where do you wanna go?",
              style: TextStyle(
                  color: Color.fromARGB(255, 7, 72, 126),
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: CarouselSlider(
                items: [
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/1.png',
                      fit: BoxFit.cover,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                  ),
                  Container(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/2.png',
                        fit: BoxFit.cover,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5.0)),
                  Container(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/3.png',
                        fit: BoxFit.cover,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5.0)),
                  Container(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/4.png',
                        fit: BoxFit.cover,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5.0)),
                ],
                //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(seconds: 5),
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          SingleChildScrollView(
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
                                width: 17.0,
                                height: 17.0,
                                child: SvgPicture.asset(
                                    "assets/flame-svgrepo-com.svg")),
                            const Text(
                              " Popular",
                              style: TextStyle(color: Colors.black),
                            ),
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
                                width: 17.0,
                                height: 17.0,
                                child: SvgPicture.asset(
                                    "assets/water-svgrepo-com.svg")),
                            const Text(
                              " Lake",
                              style: TextStyle(color: Colors.black),
                            ),
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
                                width: 17.0,
                                height: 17.0,
                                child: SvgPicture.asset(
                                    "assets/beach-svgrepo-com.svg")),
                            const Text(
                              " Beach",
                              style: TextStyle(color: Colors.black),
                            ),
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
                                width: 17.0,
                                height: 17.0,
                                child: SvgPicture.asset(
                                    "assets/mountain-svgrepo-com.svg")),
                            const Text(
                              " Mountain",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])),
          const SizedBox(
            height: 20.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Travel()));
                    },
                    child: Card(
                      child: Column(children: [
                        Stack(children: [
                          Container(
                            height: 180.0,
                            width: 220.0,
                            child: Image.asset("assets/1.png"),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: FavoriteButton(
                              iconSize: 40.0,
                              iconDisabledColor:
                                  Color.fromARGB(255, 151, 149, 149),
                              valueChanged: (_isFavorite) {
                                print('Is Favorite $_isFavorite)');
                              },
                            ),
                          )
                        ]),
                        const SizedBox(height: 5.0),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Nusa Pedina",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0),
                                ),
                                SizedBox(height: 5.0),
                                Row(children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    "Bali, Indoesia",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )
                                ]),
                              ],
                            ),
                            SizedBox(width: 40.0),
                            Row(
                              children: [
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(children: [
                      Stack(children: [
                        Container(
                          height: 180.0,
                          width: 220.0,
                          child: Image.asset("assets/1.png"),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: FavoriteButton(
                            iconSize: 40.0,
                            iconDisabledColor:
                                Color.fromARGB(255, 151, 149, 149),
                            valueChanged: (_isFavorite) {
                              print('Is Favorite $_isFavorite)');
                            },
                          ),
                        )
                      ]),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Nusa Pedina",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0),
                              ),
                              SizedBox(height: 5.0),
                              Row(children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.orange,
                                ),
                                Text(
                                  "Bali, Indoesia",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  height: 10.0,
                                )
                              ]),
                            ],
                          ),
                          SizedBox(width: 40.0),
                          Row(
                            children: [
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(children: [
                      Stack(children: [
                        Container(
                          height: 180.0,
                          width: 220.0,
                          child: Image.asset("assets/1.png"),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: FavoriteButton(
                            iconSize: 40.0,
                            iconDisabledColor:
                                Color.fromARGB(255, 151, 149, 149),
                            valueChanged: (_isFavorite) {
                              print('Is Favorite $_isFavorite)');
                            },
                          ),
                        )
                      ]),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Nusa Pedina",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0),
                              ),
                              SizedBox(height: 5.0),
                              Row(children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.orange,
                                ),
                                Text(
                                  "Bali, Indoesia",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                )
                              ]),
                            ],
                          ),
                          SizedBox(width: 40.0),
                          Row(
                            children: [
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(children: [
                      Stack(children: [
                        Container(
                          height: 180.0,
                          width: 220.0,
                          child: Image.asset("assets/1.png"),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: FavoriteButton(
                            iconSize: 40.0,
                            iconDisabledColor:
                                Color.fromARGB(255, 151, 149, 149),
                            valueChanged: (_isFavorite) {
                              print('Is Favorite $_isFavorite)');
                            },
                          ),
                        )
                      ]),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Nusa Pedina",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0),
                              ),
                              SizedBox(height: 5.0),
                              Row(children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.orange,
                                ),
                                Text(
                                  "Bali, Indoesia",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                )
                              ]),
                            ],
                          ),
                          SizedBox(width: 40.0),
                          Row(
                            children: [
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
