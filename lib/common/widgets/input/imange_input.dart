import 'dart:io';

import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';

class ImageInput extends StatelessWidget {
  final TextEditingController controller;
  final File file;

  final String title;
  const ImageInput({
    required this.file,
    required this.controller,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              title,
              style: body1(cBlack),
            ),
          ),
          Container(
            width: sWidthFull(context),
            height: 150,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: cWhite,
              border: Border.all(color: cSekunder, width: 2),
            ),
            child: const CircleAvatar(
              backgroundColor: cSekunder,
              radius: 20,
              child: Icon(Icons.camera_alt, color: cWhite, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
