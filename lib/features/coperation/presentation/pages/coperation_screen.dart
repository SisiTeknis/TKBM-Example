import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/features/coperation/presentation/controllers/menus_corporation.dart';
import 'package:big_koperasi/features/coperation/presentation/widgets/header_coperation.dart';
import 'package:big_koperasi/features/coperation/presentation/widgets/info_dsscription.dart';
import 'package:flutter/material.dart';

class CoperationScreen extends StatefulWidget {
  final ScrollController controller;
  const CoperationScreen({required this.controller, super.key});
  @override
  State<CoperationScreen> createState() => _CoperationScreenState();
}

class _CoperationScreenState extends State<CoperationScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          headerCoperation(context),
          infoDescriptionCard(context, 'Description Coperation', 'saasas'),
          Column(
            children: menusCoperation(context).map((value) {
              return GestureDetector(
                onTap: value['action'],
                child: Container(
                  width: sWidthFull(context),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.only(bottom: 2),
                  color: cWhite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(value['icon'], color: cGrey, size: 30),
                          const SizedBox(width: 10),
                          Text(
                            value['name'],
                            style: h3(cBlack),
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: cBlack,
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
