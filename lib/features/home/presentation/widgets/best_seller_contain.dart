import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';

class BestSellerContain extends StatefulWidget {
  const BestSellerContain({super.key});

  @override
  State<BestSellerContain> createState() => _BestSellerContainState();
}

class _BestSellerContainState extends State<BestSellerContain> {
  var products = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      // height: 220,
      width: sWidthFull(context),
      color: cWhite,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Best Seler',
              style: subtitle(cSekunder),
            ),
          ),
          SizedBox(
            width: sWidthFull(context),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: products.map((value) {
                  return card();
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget card() {
    return GestureDetector(
      onTap: () => null,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cWhite,
          boxShadow: const [
            BoxShadow(
              color: cSekunder,
              blurRadius: 7,
              spreadRadius: 0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: sWidthDynamic(context, 0.6),
        height: 240,
        child: Column(
          children: [
            SizedBox(
              width: sWidthDynamic(context, 0.6),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'Title',
                    style: h3(cBlack),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  '0' == '0.00'
                      ? Container()
                      : Row(
                          children: [
                            Text(
                              '200.000.00',
                              style: discount(cGrey),
                            ),
                            Text(
                              ' 20%',
                              style: h3(cPremier),
                            ),
                          ],
                        ),
                  Text(
                    '20000',
                    style: h3(cGreen),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
