import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({super.key});

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

List<dynamic> listMenu(BuildContext context) {
  return [
    {"icon": Icons.swap_horiz_outlined, 'action': () => null},
    {"icon": Icons.change_circle_outlined, 'action': () => null},
    {"icon": Icons.qr_code, 'action': () => null},
    {"icon": Icons.history, 'action': () => null},
  ];
}

class _BalanceCardState extends State<BalanceCard> {
  @override
  Widget build(BuildContext context) {
    double widthCard = sWidthFull(context) - 60;

    return Container(
        padding: const EdgeInsets.all(20),
        width: sWidthFull(context),
        decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: cSekunder,
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => null,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.account_balance_wallet_rounded,
                        size: 40,
                        color: cSekunder,
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Saldo', style: body1(cGrey)),
                          SizedBox(
                            width: (widthCard - 40) / 2 - 25,
                            child: Text(
                              '200.000.000',
                              style: h3(cBlack),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.stars,
                      size: 40,
                      color: cSekunder,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Point', style: body1(cGrey)),
                        SizedBox(
                          width: (widthCard - 40) / 2 - 25,
                          child: Text(
                            '20000000',
                            style: h3(cBlack),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: listMenu(context).map((value) {
                return GestureDetector(
                  onTap: value['action'],
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: cPremier,
                        child: Icon(
                          value['icon'],
                          color: cWhite,
                          size: 35,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text('Contoh', style: body3(cGrey))
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ));
  }
}
