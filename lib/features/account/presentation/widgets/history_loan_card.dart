import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';

class HistoryLoanCard extends StatelessWidget {
  //final Job_submission value;
  const HistoryLoanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: sWidthFull(context),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          SizedBox(
            height: 190,
            width: sWidthFull(context),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 190,
            width: sWidthFull(context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(0, 0, 0, 0),
                  Color.fromARGB(138, 0, 0, 0)
                ],
              ),
            ),
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          color: cGreen,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('value.status', style: h3(cWhite)),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text('value.keterangan', style: h2(cWhite), maxLines: 2),
                    const SizedBox(height: 5)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
