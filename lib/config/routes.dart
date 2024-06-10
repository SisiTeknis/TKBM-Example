import 'package:big_koperasi/features/account/presentation/pages/edit_profile_screen.dart';
import 'package:big_koperasi/features/account/presentation/pages/history_screen.dart';
import 'package:big_koperasi/features/coperation/presentation/pages/form_coperation.dart';
import 'package:big_koperasi/features/coperation/presentation/pages/history_service_porposartion.dart';
import 'package:big_koperasi/features/coperation/presentation/pages/payrole.dart';
import 'package:big_koperasi/features/coperation/presentation/pages/service.dart';
import 'package:big_koperasi/features/loan/presentation/pages/detail_loan_screen.dart';
import 'package:big_koperasi/features/shop/presentation/pages/detail_market_screen.dart';
import 'package:big_koperasi/features/shop/presentation/pages/product_by_category_screen.dart';
import 'package:flutter/cupertino.dart';

goBack(BuildContext context) {
  Navigator.pop(context);
}

gotoEditProfile(BuildContext context) {
  Navigator.of(context).push(CupertinoPageRoute<void>(
    builder: (BuildContext context) => const EditProfileScreen(),
  ));
}

gotoHystory(BuildContext context) {
  Navigator.of(context).push(CupertinoPageRoute<void>(
    builder: (BuildContext context) => const MystoryScreen(),
  ));
}

gotoProductByCategory(
  BuildContext context,
  dynamic idCategory,
  String name,
) {
  Navigator.of(context).push(CupertinoPageRoute<void>(
    builder: (BuildContext context) => ProductByCategoryScreen(
      idCategory: idCategory,
      categoriesName: name,
    ),
  ));
}

gotoDetailMarket(BuildContext context) {
  Navigator.of(context).push(CupertinoPageRoute<void>(
    builder: (BuildContext context) => DetailMarketScreen(),
  ));
}

gotoDetailLoan(BuildContext context) {
  Navigator.of(context).push(CupertinoPageRoute<void>(
    builder: (BuildContext context) => DetailLoanScreen(),
  ));
}

gotoListCoperationService(BuildContext context) {
  Navigator.of(context).push(CupertinoPageRoute<void>(
    builder: (BuildContext context) => ServiceScreen(),
  ));
}

gotoFormService(BuildContext context) {
  Navigator.of(context).push(CupertinoPageRoute<void>(
    builder: (BuildContext context) => FormuCoperation(),
  ));
}

gotoHistoryServicePorporation(BuildContext context) {
  Navigator.of(context).push(CupertinoPageRoute<void>(
    builder: (BuildContext context) => HistoryServicePorporation(),
  ));
}

gotoPayrole(BuildContext context) {
  Navigator.of(context).push(CupertinoPageRoute<void>(
    builder: (BuildContext context) => PayroleScreen(),
  ));
}
