part of 'navigation_buttom_handler_bloc.dart';

class NavigationButtomHandlerState {
  final int route;
  const NavigationButtomHandlerState(this.route);
}

class NavigationButtomHandlerInitial extends NavigationButtomHandlerState {
  NavigationButtomHandlerInitial() : super(0);
}

class NavigationButtomHandlerLoaded extends NavigationButtomHandlerState {
  const NavigationButtomHandlerLoaded(int route) : super(route);
}
