import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slash_detailview/components/custom_logo.dart';
import 'package:slash_detailview/helper/app_router/app_router.dart';
import 'package:slash_detailview/views/home/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      AppRouter.navigateAndPop(context, const HomeView());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomLogo(),
          ],
        ),
      ),
    );
  }
}
