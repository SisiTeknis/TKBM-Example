import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:flutter/material.dart';

class LeftButton extends StatelessWidget {
  final String title;
  const LeftButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: cSekunder,
          ),
          child: Text(title, style: h2(cWhite)),
        ),
        Container(),
      ],
    );
  }
}
