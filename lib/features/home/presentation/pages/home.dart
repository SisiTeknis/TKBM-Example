import 'package:big_koperasi/features/home/presentation/widgets/best_seller_contain.dart';
import 'package:big_koperasi/features/home/presentation/widgets/home_header.dart';
import 'package:big_koperasi/features/home/presentation/widgets/ppob_contain.dart';
import 'package:big_koperasi/features/home/presentation/widgets/promotion_contain.dart';
import 'package:big_koperasi/features/home/presentation/widgets/recomendation_loan_contain.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final ScrollController controller;
  const HomeScreen({required this.controller, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future refreshData() async {
    // await WalletRepository().getWallet(context);
    // // ignore: use_build_context_synchronously
    // await ProductRepository().getBestProduct(context);
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refreshData,
      child: SingleChildScrollView(
        controller: widget.controller,
        child: const Column(
          children: [
            HomeHeader(),
            SizedBox(height: 10),
            PPOBContain(),
            SizedBox(height: 10),
            PromotionContain(),
            SizedBox(height: 10),
            BestSellerContain(),
            SizedBox(height: 10),
            RecomendationLoanContain()
          ],
        ),
      ),
    );
  }
}
