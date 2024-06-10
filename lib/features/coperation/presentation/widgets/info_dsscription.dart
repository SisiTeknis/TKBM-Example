import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';

Widget infoDescriptionCard(
    BuildContext context, String title, String description) {
  return Container(
    width: sWidthFull(context),
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.all(20),
    decoration: const BoxDecoration(color: Colors.white),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: h2(cBlack),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}
