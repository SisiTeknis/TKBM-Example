import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/config/routes.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  //final Product product;
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => gotoDetailMarket(context),
      child: Container(
        width: sWidthFull(context),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Container(
          // height: 310,
          width: sWidthFull(context),
          decoration: BoxDecoration(
            color: cWhite,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: cSekunder,
                blurRadius: 10,
                spreadRadius: -3,
                offset: Offset(1, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: sWidthFull(context),
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
                width: sWidthFull(context),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'product.title',
                      style: body1(cBlack),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('by ${'product.username'}', style: body3(cGrey)),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            'product.discount_percentage' == '0.00'
                                ? Container()
                                : Row(
                                    children: [
                                      Text(
                                        // '${product.price} ${product.price_type.toUpperCase()}',
                                        'halloo',
                                        style: discount(cGrey),
                                      ),
                                      Text(
                                        '  ${30}%',
                                        style: h3(cPremier),
                                      ),
                                    ],
                                  ),
                            Text(
                              // '${product.discounted_price} ${product.price_type.toUpperCase()}',
                              '2000',
                              style: h3(cGreen),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 20,
                                  color: cTersier,
                                ),
                                Text(
                                  // product.rating,
                                  '5',
                                  style: h3(cBlack),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${'product.stock'} Stock',
                              style: body3(cGrey),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
