import 'dart:ui';
import 'package:rive/rive.dart' as rv;
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2300), () async {
      Navigator.of(context).pushNamed('/dashboard');
    });
    return const WelcomeScreen();
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        _staticBackground(context),
        _staticBlurFilter(),
        _staticLogo(),
      ],
    ));
  }

  Widget _staticBackground(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Stack(children: [
      Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: cs.background,
          image: DecorationImage(
              alignment: Alignment.topCenter,
              image: Image.asset("assets/images/bg.jpg").image,
              fit: BoxFit.cover),
        ),
      ),
      Container(
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: const Alignment(0, -0.618),
                  end: const Alignment(0, 1),
                  colors: [
                cs.background.withOpacity(0.22),
                cs.background.withOpacity(1)
              ])))
    ]);
  }

  Widget _staticBlurFilter() {
    return Center(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: _staticLogo(),
      ),
    );
  }
}

Widget _staticLogo() {
  return const rv.RiveAnimation.asset('assets/rive/design.riv');
}
