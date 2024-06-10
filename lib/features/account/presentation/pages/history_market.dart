import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/features/account/presentation/widgets/history_market_card.dart';
import 'package:flutter/material.dart';

class HistoryDygitalMarket extends StatefulWidget {
  const HistoryDygitalMarket({super.key});

  @override
  State<HistoryDygitalMarket> createState() => _HistoryDygitalMarketState();
}

class _HistoryDygitalMarketState extends State<HistoryDygitalMarket> {
  bool isLoading = true;
  // List<History_payment> data = [];

  // getListHistory() async {
  //   await ProductRepository().getListHistory().then((value) {
  //     setState(() {
  //       data = value.history_payments;
  //       isLoading = false;
  //     });
  //   });
  // }

  @override
  // void initState() {
  //   super.initState();
  //   getListHistory();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cBackround,
      width: sWidthFull(context),
      height: sWidthFull(context) - kToolbarHeight + 50,
      child: SingleChildScrollView(
        child:
            //isLoading
            // ? const Center(child: CircularProgressIndicator())
            // : data.isEmpty
            //     ? SizedBox(
            //         width: sWidthFull(context),
            //         height: sWidthFull(context),
            //         child: Image.asset(
            //           'assets/images/empty.png',
            //           scale: 5,
            //         ),
            //       )
            //     :
            Column(
          children:
              [1, 2, 3, 4, 5].map((value) => HystoryMarketCard()).toList(),
        ),
      ),
    );
  }
}
