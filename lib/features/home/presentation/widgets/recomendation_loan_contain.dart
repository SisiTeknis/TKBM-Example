import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/card/loan_card.dart';
import 'package:flutter/material.dart';

class RecomendationLoanContain extends StatefulWidget {
  const RecomendationLoanContain({super.key});

  @override
  State<RecomendationLoanContain> createState() =>
      _RecomendationLoanContainState();
}

class _RecomendationLoanContainState extends State<RecomendationLoanContain> {
  bool isLoading = true;
  searchHandler() {}

  // getDataHandler() async {
  //   await JobRepository().getListJob().then((value) {
  //     if (value.status == 'OOPS') {
  //       gotoSplashScreen(context);
  //     }

  //     setState(() {
  //       if (value.status == 'OOPS') {
  //         gotoSplashScreen(context);
  //       }
  //       data = value;
  //       isLoading = false;
  //     });
  //     // }
  //   });
  // }

  @override
  // void initState() {
  //   super.initState();

  //   getDataHandler();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: sWidthFull(context),
      color: cWhite,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Recommendation For You',
              style: subtitle(cSekunder),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [cPremier, cTersier],
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
            height: 250,
            width: sWidthFull(context),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [1, 2, 3, 4].map((value) {
                    return LoanCard();
                  }).toList(),
                )),
          )
        ],
      ),
    );
  }
}
