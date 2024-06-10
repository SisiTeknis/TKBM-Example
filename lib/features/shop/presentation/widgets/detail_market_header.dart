import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/modal/pop_up_image_dialog.dart';
import 'package:big_koperasi/config/routes.dart';
import 'package:flutter/material.dart';

class DetailMarketHeader extends StatelessWidget {
  final String image;
  const DetailMarketHeader({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: sWidthFull(context),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: GestureDetector(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (_) => PopupImageDialog(
                    image:
                        ('https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg'),
                  ),
                );
              },
              child: Image.network(
                'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => goBack(context),
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: cWhite,
              // color: ,

              boxShadow: const [
                BoxShadow(
                  color: cSekunder,
                  blurRadius: 5,
                  spreadRadius: 0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 23,
              color: cSekunder,
            ),
          ),
        )
      ],
    );
  }
}
