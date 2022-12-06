part of 'on_boarding_bloc.dart';

abstract class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();

  @override
  List<Object> get props => [];
}

class ChangePageEvent extends OnBoardingEvent {
  final int currentPage;

  const ChangePageEvent({required this.currentPage});

  @override
  List<Object> get props => [currentPage];
}
