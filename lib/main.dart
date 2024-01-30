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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
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
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorRes.themeColor),
        useMaterial3: true,
      ),
      routes: {
        RouteNames.splashScreen: (BuildContext context) => const SplashScreen(),
        RouteNames.loginScreen: (BuildContext context) => const LoginScreen(),
        RouteNames.registrationScreen: (BuildContext context) =>
            const RegistrationScreen(),
        RouteNames.forgotPasswordScreen: (BuildContext context) =>
            const ForgotPassWordScreen(),
      },
    );
  }
}
