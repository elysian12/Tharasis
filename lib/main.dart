import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharasis_app/data/blocs/onboarding/on_boarding_bloc.dart';
import 'package:tharasis_app/data/repositories/onboaring_repositories.dart';

import './common/constants/theme.dart';
import './modules/modules.dart';
import './routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiRepositoryProvider(
          providers: [
            RepositoryProvider(create: (_) => OnBoardingRepositories())
          ],
          child: MultiBlocProvider(
            providers: [BlocProvider(create: (context) => OnBoardingBloc())],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Tharasis App",
              theme: appTheme(),
              onGenerateRoute: MyRouter.generateRoute,
              initialRoute: SplashScreen.routeName,
            ),
          ),
        );
      },
    );
  }
}
