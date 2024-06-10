import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/modal/pop_up_ask_dynamic.dart';
import 'package:flutter/material.dart';

class MarketBottom extends StatefulWidget {
  final dynamic id;
  final String price;
  final String type;
  final int count;
  const MarketBottom({
    required this.id,
    required this.count,
    required this.price,
    required this.type,
    super.key,
  });

  @override
  State<MarketBottom> createState() => _MarketBottomState();
}

class _MarketBottomState extends State<MarketBottom> {
  bool isLoading = false;

  counterPrice() {
    double temp = double.parse(widget.price);
    double result = temp * widget.count;

    return result;
  }

  // buyHandeler() async {
  //   setState(() => isLoading = true);
  //   await ProductRepository()
  //       .postBuyProduct(widget.id, widget.count)
  //       .then((value) {
  //     if (value.status == 'success') {
  //       goBack(context);
  //       gotoDetailHistoryMarket(context, widget.id);
  //       popupDynamic(context, value.status, value.message);
  //     } else {
  //       popupDynamic(context, value.status, value.message);
  //     }
  //     setState(() => isLoading = false);
  //   });
  // }

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
          Text(
            '${counterPrice()} ${widget.type.toUpperCase()}',
            style: h3(cWhite),
          ),
          Row(
            children: [
              GestureDetector(
                // onTap: () => gotoAskProduct(context, widget.id, ''),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: cWhite,
                  ),
                  child: Text('Ask', style: h2(cSekunder)),
                ),
              ),
              const SizedBox(width: 3),
              GestureDetector(
                onTap: () => isLoading
                    ? null
                    : popupAskDynamic(
                        context,
                        "Are you Sure?",
                        "Buy this product with ${counterPrice()} ${widget.type.toUpperCase()}",
                        // () => buyHandeler(),
                        () => null),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: cWhite,
                  ),
                  child: Text(
                    isLoading ? "Loading" : 'Buy Now',
                    style: h2(cSekunder),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
