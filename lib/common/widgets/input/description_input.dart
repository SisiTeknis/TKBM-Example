import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:flutter/material.dart';

class DescriprionInput extends StatelessWidget {
  final TextEditingController controller;
  final String tag;
  final String title;
  // final bool isPassword;
  const DescriprionInput({
    required this.controller,
    required this.tag,
    required this.title,
    // required this.isPassword,
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
            height: 125,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: cWhite,
              border: Border.all(color: cSekunder, width: 2),
            ),
            child: TextField(
              readOnly: false,
              style: const TextStyle(color: cBlack),
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: tag,
              ),
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 4,
            ),
          ),
        ],
      ),
    );
  }
}
