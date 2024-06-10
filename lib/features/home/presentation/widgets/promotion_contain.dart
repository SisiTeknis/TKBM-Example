import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PromotionContain extends StatefulWidget {
  const PromotionContain({super.key});

  @override
  State<PromotionContain> createState() => _PromotionContainState();
}

class _PromotionContainState extends State<PromotionContain> {
  var products = [
    'https://ceoptions.com/wp-content/uploads/2017/10/Promotional-Marketing-Strategies-to-Boost-Sales.jpg',
    'https://img.freepik.com/free-vector/sales-promo-with-abstract-shapes_79603-1400.jpg',
    'https://t4.ftcdn.net/jpg/02/95/29/57/360_F_295295765_Xl4gDnZFPkYVb2xOt6SwJrUcPKGdTkhr.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16/8,
        autoPlay: true
      ),
      items: products.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: Image.network(
                i,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
