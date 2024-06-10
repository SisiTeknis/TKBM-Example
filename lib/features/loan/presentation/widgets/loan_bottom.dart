import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';

class LoanButtom extends StatefulWidget {
  final dynamic id;
  //final DetailJobModel data;
  const LoanButtom({required this.id, super.key});

  @override
  State<LoanButtom> createState() => _LoanButtomState();
}

class _LoanButtomState extends State<LoanButtom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: sWidthMinus(context, 20),
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: cSekunder,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: cGrey,
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.stars,
                size: 30,
                color: cWhite,
              ),
              const SizedBox(width: 10),
              Text(
                'widget.data.job_detail.reward_per_worker',
                style: h2(cWhite),
              ),
            ],
          ),
          GestureDetector(
            // onTap: () => widget.data.job_detail.has_submitted
            //     ? null
            //     : gotoUploadMission(context, widget.id),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: cWhite,
              ),
              child: Text("Pinjam", style: h2(true ? cGreyCalm : cSekunder)),
            ),
          )
        ],
      ),
    );
  }
}
