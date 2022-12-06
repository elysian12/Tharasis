import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingCurrentPage(currentPage: 0)) {
    on<OnBoardingEvent>((event, emit) {
      if (event is ChangePageEvent) {
        emit(OnBoardingCurrentPage(currentPage: event.currentPage));
      }
    });
  }
}
