import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/modal/pop_up_image_dialog.dart';
import 'package:big_koperasi/features/shop/presentation/widgets/detail_market_header.dart';
import 'package:big_koperasi/features/shop/presentation/widgets/market_bottom.dart';
import 'package:flutter/material.dart';

class DetailMarketScreen extends StatefulWidget {
  //final Product product;
  const DetailMarketScreen({super.key});

  @override
  State<DetailMarketScreen> createState() => _DetailMarketScreenState();
}

class _DetailMarketScreenState extends State<DetailMarketScreen> {
  bool isLoading = true;
  int count = 1;
  String plus = "PLUS";
  String minus = "MINUS";

  List<String> image = ["0"];
  String categoryName = '';

  //List<TestimonyModel> listomment = [];

  counter(String type) {
    if (type == plus) {
      if (count <= int.parse("0")) {
        setState(() => count++);
      }
    } else {
      if (count - 1 != 0) {
        setState(() => count--);
      }
    }
  }

  // getDetail() async {
  //   try {
  //     await ProductRepository()
  //         .getDetailProduct(widget.product.id)
  //         .then((value) {
  //       setState(() {
  //         categoryName = value.product_detail.category_name;
  //         if (value.product_detail.image2 != '') {
  //           image.add(value.product_detail.image2);
  //         }
  //         if (value.product_detail.image3 != '') {
  //           image.add(value.product_detail.image3);
  //         }
  //         if (value.product_detail.image4 != '') {
  //           image.add(value.product_detail.image4);
  //         }
  //       });
  //     });

  //     await ProductRepository().getListComent(widget.product.id).then((value) {
  //       setState(() {
  //         listomment = value;
  //       });
  //     });
  //     setState(() => isLoading = false);
  //   } catch (_) {
  //     // ignore: use_build_context_synchronously
  //     gotoLogin(context);
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getDetail();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: sHeightFull(context),
              width: sWidthFull(context),
              color: cBackround,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DetailMarketHeader(
                        image:
                            'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg'),
                    info(context),
                    description(context),
                    containImage(context),
                    comment(context),
                    const SizedBox(height: 80)
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomCenter,
              height: sHeightFull(context),
              width: sWidthFull(context),
              child: MarketBottom(
                // id: widget.product.id,
                // count: count,
                // price: widget.product.discounted_price,
                // type: widget.product.price_type,

                id: 1,
                count: count,
                price: '1000',
                type: 'widget.product.price_type',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget info(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      width: sWidthFull(context),
      color: cWhite,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: cTersier),
                child: Text(categoryName, style: body1(cWhite)),
              ),
            ],
          ),
          SizedBox(
            width: sWidthMinus(context, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'widget.product.title',
                  style: h2(cBlack),
                ),
                const SizedBox(height: 5),
                Text(
                  'by ${'widget.product.username'}',
                  style: body3(cGrey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, color: cTersier),
                      const SizedBox(width: 5),
                      Text(
                        'widget.product.rating',
                        style: h3(cBlack),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  'widget.product.discount_percentage' == '0.00'
                      ? Container()
                      : Row(
                          children: [
                            Text(
                              '${'widget.product.price'} ${'widget.product.price_type.toUpperCase()'}',
                              style: discount(cGrey),
                            ),
                            Text(
                              // '  ${widget.product.discount_percentage}%',
                              '20',
                              style: h3(cPremier),
                            ),
                          ],
                        ),
                  Text(
                    // '${widget.product.discounted_price} ${widget.product.price_type.toUpperCase()}',
                    '20121',
                    style: h3(cGreen),
                  ),
                  const SizedBox(height: 5),
                  Text('${'widget.product.stock'} Stock', style: body3(cGrey)),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => counter(minus),
                    child: const Icon(
                      Icons.remove_circle_outline_sharp,
                      size: 37,
                      color: cSekunder,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    child: Text('$count', style: h3(cBlack)),
                  ),
                  GestureDetector(
                    onTap: () => counter(plus),
                    child: const Icon(
                      Icons.add_circle_outline_sharp,
                      size: 37,
                      color: cSekunder,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget description(BuildContext contexte) {
    return Container(
      width: sWidthFull(context),
      color: cWhite,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Text(
        'widget.product.description',
        style: body1(cBlack),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget containImage(BuildContext context) {
    return image.length == 1
        ? Container()
        : Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: sWidthFull(context),
            color: cWhite,
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : SizedBox(
                    width: sWidthFull(context),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: image.map((value) {
                          return value == '0'
                              ? const SizedBox(width: 20)
                              : Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  width: sWidthDynamic(context, 0.7),
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: GestureDetector(
                                        onTap: () async {
                                          await showDialog(
                                            context: context,
                                            builder: (_) => PopupImageDialog(
                                              image:
                                                  ('https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg'),
                                            ),
                                          );
                                        },
                                        child: Image.network(
                                          'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                        }).toList(),
                      ),
                    ),
                  ),
          );
  }

  Widget comment(BuildContext context) {
    return
        // listomment.isEmpty
        //     ? Container()
        //     :
        Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: cWhite,
      width: sWidthFull(context),
      child: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Consume Reviews', style: h3(cBlack)),
                const SizedBox(height: 20),
                Column(
                  children:
                      [1, 2, 3, 4, 5].map((value) => review(context)).toList(),
                )
              ],
            ),
    );
  }

  Widget review(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg"),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              width: sWidthMinus(context, 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'value.username',
                    style: body2(cBlack),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, color: cTersier),
                      const SizedBox(width: 5),
                      Text('value.rating', style: h3(cBlack))
                    ],
                  ),
                  Text(
                    ' value.testimony',
                    style: caption(cGrey),
                  ),
                ],
              ),
            )
          ],
        ),
        Container(
          height: 1,
          width: sWidthFull(context),
          color: cGrey,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
      ],
    );
  }
}
