import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/config/routes.dart';
import 'package:big_koperasi/features/account/presentation/pages/history_loan_screen.dart';
import 'package:big_koperasi/features/account/presentation/pages/history_market.dart';
import 'package:big_koperasi/features/account/presentation/pages/ppob_history_screen.dart';
import 'package:flutter/material.dart';

class MystoryScreen extends StatelessWidget {
  const MystoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: MyAppBar(),
        body: TabBarView(
          children: [
            HistoryPPOB(),
            HistoryDygitalMarket(),
            HistoryLoan(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + 50); // Tinggi AppBar

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => goBack(context),
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      backgroundColor: cPremier,
      title: Text('History', style: h1(cWhite)),
      bottom: const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 24.0),
        automaticIndicatorColorAdjustment: true,
        isScrollable: true,
        tabs: [
          Tab(text: 'Ppob'),
          Tab(text: 'Shop'),
          Tab(text: 'Loan'),
        ],
      ),
    );
  }
}
