import 'package:finance/common/widgets/responsive.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return const ResponsiveWidget(
      smallScreen: SmallSplash(),
      largeScreen: Scaffold(),
    );
  }
}

class SmallSplash extends StatelessWidget {
  const SmallSplash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
      ),
    );
  }
}
