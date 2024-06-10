import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';

Widget headerCoperation(BuildContext context) {
  return Container(
    // height: 178,
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
    child: Text(
      'Coperation',
      style: h1(cWhite),
    ),
  );
}
