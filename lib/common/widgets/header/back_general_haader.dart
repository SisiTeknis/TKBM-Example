import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/config/routes.dart';
import 'package:flutter/material.dart';

class BackGeneralHeader extends StatelessWidget {
  final String title;
  const BackGeneralHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
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
      child: GestureDetector(
        onTap: () => goBack(context),
        child: Row(
          children: [
            const Icon(Icons.arrow_back_ios_new_rounded, color: cWhite),
            const SizedBox(width: 10),
            Text(title, style: h1(cWhite))
          ],
        ),
      ),
    );
  }
}
