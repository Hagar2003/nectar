import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderPart extends StatelessWidget {
  const SliderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [Image.asset('assets/images/banner.jpg',fit: BoxFit.contain,),
      //Image.asset('assets/images/banner.jpg'),
      //Image.asset('assets/images/banner.jpg')
      ],
      options: CarouselOptions(
        height: 160,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 900),
        enlargeCenterPage: true,
        enlargeFactor: 0.5,
        scrollDirection: Axis.horizontal));
  }
}












//AssetImage('assets/images/carrot.png')