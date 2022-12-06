part of 'on_boarding_bloc.dart';

abstract class OnBoardingState extends Equatable {
  const OnBoardingState();

  @override
  List<Object> get props => [];
}

class OnBoardingCurrentPage extends OnBoardingState {
  final int currentPage;

  const OnBoardingCurrentPage({
    required this.currentPage,
  });

  @override
  List<Object> get props => [currentPage];
}
