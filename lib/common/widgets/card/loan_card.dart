import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/config/routes.dart';
import 'package:flutter/material.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => gotoDetailLoan(context),
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        width: sWidthFull(context),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            SizedBox(
              width: sWidthFull(context),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: sWidthFull(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(0, 41, 8, 8),
                    Color.fromARGB(138, 0, 0, 0)
                  ],
                ),
              ),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      width: sWidthFull(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, right: 15, left: 10),
                            decoration: BoxDecoration(
                              color: cWhite,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.stars, color: cSekunder),
                                const SizedBox(width: 5),
                                Text('200.000', style: body2(cSekunder))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: cTersier,
                          ),
                          child: Text("SUV", style: caption(cWhite)),
                        ),
                        const SizedBox(height: 5),
                        Text('cONTOH', style: h2(cWhite)),
                        const SizedBox(height: 5),
                        Text('By cONTOH', style: body3(cGreyCalm)),
                        const SizedBox(height: 5),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
