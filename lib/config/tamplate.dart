import 'package:big_koperasi/bloc/navigation_buttom_handler/navigation_buttom_handler_bloc.dart';
import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/features/account/presentation/pages/profile_screen.dart';
import 'package:big_koperasi/features/coperation/presentation/pages/coperation_screen.dart';
import 'package:big_koperasi/features/home/presentation/pages/home.dart';
import 'package:big_koperasi/features/loan/presentation/pages/loan_screen.dart';
import 'package:big_koperasi/features/shop/presentation/pages/market_screen.dart';
import 'package:floating_frosted_bottom_bar/floating_frosted_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';

class Tamplate extends StatefulWidget {
  const Tamplate({super.key});

  @override
  State<Tamplate> createState() => _TamplateState();
}

class _TamplateState extends State<Tamplate> {
  int indexPage = 0;

  pageHendler(ScrollController controller, int index) {
    List<Widget> mainPage = [
      HomeScreen(controller: controller),
      MarketScreen(controller: controller),
      LoanScreen(controller: controller),
      CoperationScreen(controller: controller),
      ProfileScreen(controller: controller)
    ];

    return mainPage[index];
  }

  int backButtonPressedCount = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: cPremier,
    ));
    return WillPopScope(
      onWillPop: () async {
        backButtonPressedCount++;
        if (backButtonPressedCount >= 2) {
          SystemNavigator.pop();
          return false;
        } else {
          return false;
        }
      },
      child: BlocBuilder<NavigationButtomHandlerBloc,
          NavigationButtomHandlerState>(
        builder: (context, state) {
          return FrostedBottomBar(
            width: sWidthMinus(context, 40),
            opacity: 1,
            bottomBarColor: cPremier,
            sigmaX: 5,
            sigmaY: 5,
            borderRadius: BorderRadius.circular(500),
            duration: const Duration(milliseconds: 250),
            hideOnScroll: true,
            child: Container(
              decoration: const BoxDecoration(
                color: cWhite,
                boxShadow: [
                  BoxShadow(
                    color: cBlack,
                    spreadRadius: 5,
                    blurRadius: 1,
                    offset: Offset(2, 5),
                  ),
                ],
              ),
              height: sHighBottomBar(context),
              width: sWidthMinus(context, 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      context
                          .read<NavigationButtomHandlerBloc>()
                          .add(NavigationButtomHandlerEvent(0));
                    }),
                    child: Icon(
                      size: 28,
                      Icons.home,
                      color: state.route == 0 ? cPremier : cGrey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      context
                          .read<NavigationButtomHandlerBloc>()
                          .add(NavigationButtomHandlerEvent(1));
                    }),
                    child: Icon(
                      size: 28,
                      Icons.store_mall_directory,
                      color: state.route == 1 ? cPremier : cGrey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      context
                          .read<NavigationButtomHandlerBloc>()
                          .add(NavigationButtomHandlerEvent(2));
                    }),
                    child: Icon(
                      size: 28,
                      Icons.car_rental,
                      color: state.route == 2 ? cPremier : cGrey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      context
                          .read<NavigationButtomHandlerBloc>()
                          .add(NavigationButtomHandlerEvent(3));
                    }),
                    child: Icon(
                      size: 28,
                      Icons.location_city,
                      color: state.route == 3 ? cPremier : cGrey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      context
                          .read<NavigationButtomHandlerBloc>()
                          .add(NavigationButtomHandlerEvent(4));
                    }),
                    child: Icon(
                      size: 28,
                      Icons.person,
                      color: state.route == 4 ? cPremier : cGrey,
                    ),
                  ),
                ],
              ),
            ),
            body: (context, controller) => Scaffold(
              resizeToAvoidBottomInset: false,
              body: GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: SafeArea(
                  child: Container(
                    color: cBackround,
                    width: sWidthFull(context),
                    height: sHeightFull(context),
                    child: pageHendler(controller, state.route),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
