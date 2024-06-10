

import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_buttom_handler_event.dart';
part 'navigation_buttom_handler_state.dart';

class NavigationButtomHandlerBloc extends Bloc<NavigationButtomHandlerEvent, NavigationButtomHandlerState> {
  NavigationButtomHandlerBloc() : super(NavigationButtomHandlerInitial()) {
    on<NavigationButtomHandlerEvent>((event, emit) {
      emit(NavigationButtomHandlerLoaded(event.route));
    });
  }
}
