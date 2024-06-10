import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/config/routes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PanelContain extends StatefulWidget {
  const PanelContain({super.key});

  @override
  State<PanelContain> createState() => _PanelContainState();
}

class _PanelContainState extends State<PanelContain> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        height: 105,
        width: sWidthFull(context),
        color: cWhite,
        child:
            // BlocBuilder<ProductCategoriesHandlerBloc,
            //     ProductCategoriesHandlerState>(
            //   builder: (context, ProductCategoriesHandlerState categories) {
            // return
            SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [1, 2, 3, 4, 5].map((value) {
              return Container(
                width: 60,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () =>
                          gotoProductByCategory(context, 1, "Hallo"),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: CachedNetworkImage(
                          key: UniqueKey(),
                          height: 50,
                          width: 50,
                          imageUrl: 'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg',
                          fit: BoxFit.cover,
                          // width: double.infinity,
                          maxHeightDiskCache: 75,
                          placeholder: (context, url) => Container(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                    Text(
                      "\n${"value.name"}",
                      style: body2(cGrey),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ));
  }
}
