import 'package:big_koperasi/common/widgets/card/loan_card.dart';
import 'package:big_koperasi/features/shop/presentation/widgets/market_header.dart';
import 'package:big_koperasi/features/shop/presentation/widgets/panel_contain.dart';
import 'package:flutter/material.dart';

class LoanScreen extends StatefulWidget {
  final ScrollController controller;
  const LoanScreen({required this.controller, super.key});

  @override
  State<LoanScreen> createState() => _LoanScreenState();
}

class _LoanScreenState extends State<LoanScreen> {
  double scrolledPixels = 0.0;
  int page = 1;
  bool isLoading = true;
  //List<Product> listProduct = [];
  final ScrollController _scrollController = ScrollController();

  final searchController = TextEditingController();

  // searchHandler() async {
  //   setState(() => page = 1);
  //   getData();
  // }

  // void _updateScrolledPixels() {
  //   setState(() {
  //     scrolledPixels = _scrollController.offset;
  //   });
  //   if (isLoading) return;
  //   if (_scrollController.position.pixels ==
  //       _scrollController.position.maxScrollExtent) {
  //     scrollHandler();
  //   }
  // }

  // scrollHandler() async {
  //   await ProductRepository()
  //       .getSeacrh(searchController.text, page)
  //       .then((value) {
  //     List<Product> temp = listProduct;
  //     setState(() {
  //       // value.products.map((data) => listProduct.add(data));
  //       listProduct = List.from(temp)..addAll(value.products);
  //       page += 1;
  //     });
  //   });
  //   setState(() => isLoading = false);
  // }

  // getData() async {
  //   setState(() => isLoading = true);
  //   await ProductRepository()
  //       .getSeacrh(searchController.text, page)
  //       .then((value) {
  //     if (value.status == 'OOPS') {
  //       gotoSplashScreen(context);
  //     }
  //     setState(() {
  //       listProduct = value.products;
  //       page += 1;
  //     });
  //   });
  //   setState(() => isLoading = false);
  // }

  // @override
  // void initState() {
  //   getData();
  //   _scrollController.addListener(_updateScrolledPixels);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _scrollController.removeListener(_updateScrolledPixels);
  //   _scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              MarketHeader(
                action: () => null,
                search: searchController,
              ),
              const PanelContain(),
              const SizedBox(height: 10),
              // isLoading
              //     ? const Center(child: CircularProgressIndicator())
              //     : listProduct.isEmpty
              //         ? SizedBox(
              //             width: sWidthFull(context),
              //             height: sWidthFull(context),
              //             child: Image.asset(
              //               'assets/images/empty.png',
              //               scale: 5,
              //             ),
              //           )
              //         :
              Column(
                children: [1, 2, 3, 4, 5].map((value) => LoanCard()).toList(),
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
        scrolledPixels > 190 ? const PanelContain() : Container(),
      ],
    );
  }
}
