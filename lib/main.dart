import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:says_app/core/utils/constatnce.dart';
import 'package:says_app/features/auth/presentation/views/choise_view.dart';
import 'package:says_app/features/auth/presentation/views/login_view.dart';
import 'package:says_app/features/auth/presentation/views/register_view.dart';
import 'package:says_app/features/auth/presentation/views/initial_view.dart';
import 'package:says_app/features/home/presentation/views/private_profile_view.dart';
import 'package:says_app/features/layout/presentation/controller/layout_cubit.dart';
import 'package:says_app/features/layout/presentation/views/layout_view.dart';
import 'package:says_app/features/splash/views/splash_view.dart';

import 'core/utils/app_router.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Says Demo',
        theme: ThemeData(
          fontFamily: 'DINNextLTArabicRegula',
          scaffoldBackgroundColor: const Color(0xffF4F4F4),
          primaryColor: kPrimaryColor,
          useMaterial3: false,
          primarySwatch: const MaterialColor(
            0xffFF3D64, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
            <int, Color>{
              50: kPrimaryColor,//10%
              100: kPrimaryColor,//20%
              200: kPrimaryColor,//30%
              300: kPrimaryColor,//40%
              400: kPrimaryColor,//50%
              500: kPrimaryColor,//60%
              600: kPrimaryColor,//70%
              700: kPrimaryColor,//80%
              800: kPrimaryColor,//90%
              900: kPrimaryColor,//100%
            },
          ),
        ),
      ),
    );
  }
}
