import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/features/account/presentation/widgets/history_loan_card.dart';
import 'package:flutter/material.dart';

class HistoryLoan extends StatefulWidget {
  const HistoryLoan({super.key});

  @override
  State<HistoryLoan> createState() => _HistoryLoanState();
}

class _HistoryLoanState extends State<HistoryLoan> {
  bool isLoading = true;

  // late JobListUserModel data;

  // getDataList() async {
  //   await JobRepository().getListUserJob().then((value) {
  //     setState(() {
  //       data = value;
  //       isLoading = false;
  //     });
  //   });
  // }

  @override
  // void initState() {
  //   super.initState();
  //   getDataList();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cBackround,
      width: sWidthFull(context),
      height: sWidthFull(context) - kToolbarHeight + 50,
      child:
          //isLoading
          // ? const Center(child: CircularProgressIndicator())
          // : data.job_submissions.isEmpty
          //     ? SizedBox(
          //         width: sWidthFull(context),
          //         height: sWidthFull(context),
          //         child: Image.asset(
          //           'assets/images/empty.png',
          //           scale: 5,
          //         ),
          //       )
          //     :
          SingleChildScrollView(
        child: Column(
            children: [1, 2, 3, 4].map((value) => HistoryLoanCard()).toList()),
      ),
    );
  }
}
