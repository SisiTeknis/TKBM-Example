import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';

class HistoryPPOB extends StatefulWidget {
  const HistoryPPOB({super.key});

  @override
  State<HistoryPPOB> createState() => _HistoryPPOBState();
}

class _HistoryPPOBState extends State<HistoryPPOB> {
  bool isLoading = true;
  //late PPOBHistoryModel data;
  // getHistory() async {
  //   await PPOBReposirory().getHistory().then((value) {
  //     setState(() {
  //       data = value;
  //       isLoading = false;
  //     });
  //   });
  // }

  @override
  // void initState() {
  //   super.initState();

  //   getHistory();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cBackround,
      width: sWidthFull(context),
      height: sWidthFull(context) - kToolbarHeight + 50,
      child: SingleChildScrollView(
        child:
            // data.history_payment_ppob.isEmpty
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
          children: [1, 2, 3, 4, 4].map((value) => card()).toList(),
        ),
      ),
    );
  }

  Widget card() {
    return Container(
      width: sWidthFull(context),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: const EdgeInsets.only(top: 5),
      color: cWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${100}\n\nStatus : ${"0" == "0" ? "Pending" : "Success"}\n',
            style: h3(cBlack),
          ),
          Text(
            'to: ${"value.to"}\nPrice: ${"value.price"}',
            style: h3(cBlack),
          ),
          // value.keterangan == ''
          //     ? Container()
          //     :
          Text(
            "value.keterangan",
            style: body2(cBlack),
          ),
          Text(
            '\n${"value.purchase_date"}',
            style: body3(cBlack),
          )
        ],
      ),
    );
  }
}
