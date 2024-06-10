import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:flutter/material.dart';

class RightButton extends StatelessWidget {
  final String title;
  const RightButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: cSekunder,
          ),
          child: Text(title, style: h3(cWhite)),
        ),
      ],
    );
  }
}
