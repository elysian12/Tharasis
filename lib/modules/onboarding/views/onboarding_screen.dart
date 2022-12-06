import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharasis_app/common/constants/colors.dart';
import 'package:tharasis_app/common/constants/text_style.dart';
import 'package:tharasis_app/data/blocs/onboarding/on_boarding_bloc.dart';
import 'package:tharasis_app/data/models/onboarding_model.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "/onboarding-screen";
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OnBoardingBloc, OnBoardingState>(
        builder: (context, state) {
          if (state is OnBoardingCurrentPage) {
            return Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (value) {
                      context
                          .read<OnBoardingBloc>()
                          .add(ChangePageEvent(currentPage: value));
                    },
                    itemCount: onBoardinglist.length,
                    itemBuilder: (context, index) {
                      var item = onBoardinglist[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            const Spacer(flex: 1),
                            ElasticIn(child: Image.asset(item.imgUrl!)),
                            const SizedBox(height: 40),
                            FadeIn(
                              child: Text(
                                item.desc!,
                                style: MyTextStyle.descTextStyle.copyWith(
                                  color: AppColors.blackColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 20),
                            FadeIn(
                              key: ValueKey<int>(index),
                              child: Text(
                                item.subDesc!,
                                style: MyTextStyle.descTextStyle.copyWith(
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                            const Spacer(flex: 2),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onBoardinglist.length,
                    (index) => Container(
                      margin: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: state.currentPage == index
                            ? AppColors.primaryColor
                            : AppColors.primaryColor.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                      height: 16,
                      width: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            );
          }
          return const Center(child: Text('Something Went Wrong !!!'));
        },
      ),
    );
  }
}
