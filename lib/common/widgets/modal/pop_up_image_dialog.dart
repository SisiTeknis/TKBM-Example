import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopupImageDialog extends StatelessWidget {
  String image;
  PopupImageDialog({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: sWidthFull(context),
        height: sHeightFull(context),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.contain),
        ),
      ),
    );
  }
}
