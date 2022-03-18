import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class Travel extends StatefulWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Container(
          child: CarouselSlider(
            items: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/nusa.png',
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/nusa.png',
                      fit: BoxFit.cover,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 5.0)),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/nusa.png',
                      fit: BoxFit.cover,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 5.0)),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/nusa.png',
                      fit: BoxFit.cover,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 5.0)),
              ),
            ],
            //Slider Container properties
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(seconds: 5),
              viewportFraction: 0.8,
            ),
          ),
        ),
      ),
      SizedBox(height: 30),
      Row(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Text('Nusa Pedina',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Image(image: AssetImage('assets/pinicon.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text('Bali Indonesia'),
                  ),
                ],
              )
            ],
          ),
          const Padding(padding: EdgeInsets.fromLTRB(180, 0, 0, 0)),
          FavoriteButton(
            isFavorite: true,
            // iconDisabledColor: Colors.white,
            valueChanged: (_isFavorite) {
              print('Is Favorite : $_isFavorite');
            },
          ),
        ],
      ),
      SizedBox(
        height: 25,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
            child: Image(image: AssetImage('assets/fav.png')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rating',
                  style: TextStyle(
                    fontSize: 10,
                  )),
              Text('4.8(3.2k)', style: TextStyle(fontSize: 12))
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
            child: Image(image: AssetImage('assets/dist.png')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Distance',
                  style: TextStyle(
                    fontSize: 10,
                  )),
              Text('3000km', style: TextStyle(fontSize: 12))
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
            child: Image(image: AssetImage('assets/rest.png')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Restaurants',
                  style: TextStyle(
                    fontSize: 10,
                  )),
              Text('108 avail', style: TextStyle(fontSize: 12))
            ],
          ),
        ],
      ),
      SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: const ExpandableText(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
          expandText: 'show more',
          collapseText: 'show less',
          maxLines: 1,
          linkColor: Colors.blue,
          style: TextStyle(fontSize: 16),
        ),
      ),
      SizedBox(height: 40),
      Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
        child: MaterialButton(
          color: Colors.orange,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          minWidth: MediaQuery.of(context).size.width,
          shape: StadiumBorder(side: BorderSide(width: 2, color: Colors.red)),
          child: Text('Book A Trip',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
          onPressed: () {},
        ),
      ),
    ]));
  }
}
