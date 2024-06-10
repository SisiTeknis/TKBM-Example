import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/input/search_input.dart';
import 'package:flutter/material.dart';

class MarketHeader extends StatelessWidget {
  final TextEditingController search;
  final VoidCallback action;
  const MarketHeader({required this.search, required this.action, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178,
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
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Digital Market',
                style: h1(cWhite),
              ),
              SizedBox(
                width: sWidthMinus(context, 320),
                child: const Icon(
                  Icons.notifications,
                  color: cWhite,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          SearchInput(text: search, action: action)
        ],
      ),
    );
  }
}
