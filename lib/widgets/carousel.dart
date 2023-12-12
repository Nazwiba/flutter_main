import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Carousel1(),
  ));
}

class Carousel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/scenery.jpg"),fit: BoxFit.fill)),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/scenery2.jpg"),fit: BoxFit.fill)),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/scenery 3.jpg"),fit: BoxFit.fill)),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/scenery4.jpg"),fit: BoxFit.fill)),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/scenery6.jpg"),fit: BoxFit.fill)),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/scenery11.jpg"),fit: BoxFit.fill)),
        ),
      ], options: CarouselOptions(
        height: double.infinity,
        aspectRatio: 16/9,
        viewportFraction: 1,
        initialPage: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayCurve: Curves.linear,
        autoPlayInterval: const Duration(seconds: 3),
        pauseAutoPlayOnTouch: true,

      )),
    );
  }
}
