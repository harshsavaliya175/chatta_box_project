import 'package:chattabox_project/cubit/splash_cubit/splash_cubit.dart';
import 'package:chattabox_project/utils/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/image_res.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    context.read<SplashCubit>().initialFunction();

    return Scaffold(
      body: BlocConsumer<SplashCubit, SplashState>(
        builder: (BuildContext context, SplashState state) {
          return Center(
            child: Image.asset(
              ImageRes.chattaBox,
              height: height * 0.20,
              width: width * 0.45,
            ),
          );
        },
        listener: (BuildContext context, SplashState state) {
          Navigator.of(context).pushReplacementNamed(RouteNames.loginScreen);
        },
      ),
    );
  }
}
