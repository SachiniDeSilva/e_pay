import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class productImageSlider extends StatelessWidget {
  const productImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor:Colors.redAccent,
      indicatorBackgroundColor: Colors.white,
      height: 300,
      autoPlayInterval: 1000,
      indicatorPadding: 4,
      isLoop: true,
      children: [
      Padding(padding:EdgeInsets.all(8),
      child: Image.asset("assets/Apple Watch -M2.png"),),
      Padding(padding:EdgeInsets.all(8),
      child: Image.asset("assets/w3.png"),),
      Padding(padding:EdgeInsets.all(8),
      child: Image.asset("assets/w4.png"),),
      Padding(padding:EdgeInsets.all(8),
      child: Image.asset("assets/w2.png"),
      )
    ],);
  }
}