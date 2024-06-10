import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/balance/balance_card.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 140,
          width: sWidthFull(context),
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [cPremier, cSekunder],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkOh202azhaRlzkpFaXCFywLIfUKUGMMdK3g&s',
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: sWidthMinus(context, 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hallo,\nNama Orang ',
                      style: h3(cWhite),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => null,
                          child: const Icon(
                            Icons.shopping_cart,
                            color: cWhite,
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.notifications,
                          color: cWhite,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 90),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          // height: 170,
          width: sWidthFull(context),
          child: const BalanceCard(),
        )
      ],
    );
  }
}
