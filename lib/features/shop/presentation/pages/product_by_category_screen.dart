import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/header/back_general_haader.dart';
import 'package:big_koperasi/common/widgets/input/search_input.dart';
import 'package:big_koperasi/features/shop/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductByCategoryScreen extends StatefulWidget {
  final String categoriesName;
  final dynamic idCategory;
  const ProductByCategoryScreen({
    required this.categoriesName,
    required this.idCategory,
    super.key,
  });

  @override
  State<ProductByCategoryScreen> createState() =>
      _ProductByCategoryScreenState();
}

class _ProductByCategoryScreenState extends State<ProductByCategoryScreen> {
  final seacrhController = TextEditingController();

  bool isLoading = true;
  int page = 1;
  //List<Product> listProduct = [];

  // seacrhHandler() async {
  //   setState(() => page = 1);
  //   getData();
  // }

  // getData() async {
  //   setState(() => isLoading = true);
  //   await ProductRepository()
  //       .getSeacrhByCategories(seacrhController.text, page, widget.idCategory)
  //       .then((value) {
  //     setState(() {
  //       listProduct = value.products;
  //     });
  //   });
  //   setState(() => isLoading = false);
  // }

  // @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              BackGeneralHeader(title: widget.categoriesName),
              Container(
                  color: cWhite,
                  padding: const EdgeInsets.all(20),
                  child:
                      SearchInput(text: seacrhController, action: () => null)),
              Container(
                height: sHeightMinus(context, 170),
                width: sWidthFull(context),
                color: cBackround,
                child: SingleChildScrollView(
                    child:
                        //!isLoading
                        // ? listProduct.isEmpty
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                      [1, 2, 3, 4, 5].map((value) => ProductCard()).toList(),
                )
                    //: const Center(child: CircularProgressIndicator()),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
