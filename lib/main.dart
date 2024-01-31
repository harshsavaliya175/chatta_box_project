import 'package:chattabox_project/cubit/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:chattabox_project/cubit/login_cubit/login_cubit.dart';
import 'package:chattabox_project/cubit/registration_cubit/registration_cubit.dart';
import 'package:chattabox_project/cubit/splash_cubit/splash_cubit.dart';
import 'package:chattabox_project/screens/forgot_password_screen.dart';
import 'package:chattabox_project/screens/login_screen.dart';
import 'package:chattabox_project/screens/registration_screen.dart';
import 'package:chattabox_project/screens/splash_screen.dart';
import 'package:chattabox_project/utils/color_res.dart';
import 'package:chattabox_project/utils/routes_constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'generated/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SplashCubit>(
          create: (BuildContext context) => SplashCubit(),
        ),
        BlocProvider<LoginCubit>(
          create: (BuildContext context) => LoginCubit(),
        ),
        BlocProvider<RegistrationCubit>(
          create: (BuildContext context) => RegistrationCubit(),
        ),
        BlocProvider<ForgotPasswordCubit>(
          create: (BuildContext context) => ForgotPasswordCubit(),
        ),
      ],
      child: EasyLocalization(
        path: 'assets/translations',
        supportedLocales: const [
          Locale('en'),
        ],
        fallbackLocale: const Locale('en'),
        assetLoader: const CodegenLoader(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorRes.themeColor),
        useMaterial3: true,
      ),
      routes: {
        RouteNames.splashScreen: (BuildContext context) => const SplashScreen(),
        RouteNames.loginScreen: (BuildContext context) => LoginScreen(),
        RouteNames.registrationScreen: (BuildContext context) =>
            RegistrationScreen(),
        RouteNames.forgotPasswordScreen: (BuildContext context) =>
            ForgotPassWordScreen(),
      },
    );
  }
}
