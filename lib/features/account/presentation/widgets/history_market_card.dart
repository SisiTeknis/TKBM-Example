import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/cupertino.dart';

class HystoryMarketCard extends StatelessWidget {
  //final History_payment value;
  //onst HystoryMarketCard({required this.value, super.key});
  const HystoryMarketCard({super.key});

  convertDate(String date) {
    var result = '';
    for (var i = 0; i < 10; i++) {
      result += date[i];
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () => gotoDetailHistoryMarket(context, value.product_id),
      child: Container(
        width: sWidthFull(context),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.only(top: 5),
        color: cWhite,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60,
              width: 80,
              child: Image.network(
                  'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg'),
            ),
            SizedBox(
              width: sWidthMinus(context, 130),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'value.product_title',
                    maxLines: 2,
                    style: h3(cBlack),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'by ${'value.seller_username'}',
                    style: h3(cGrey),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${'value.product_price'} ${'value.price_type.toUpperCase()'}',
                        style: h3(cGreen),
                      ),
                      Text(
                        convertDate('value.purchase_date'),
                        style: body2(cGrey),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
