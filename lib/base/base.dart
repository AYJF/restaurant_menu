import 'package:flutter/material.dart';
import 'package:restaurant_menu/tools/color_hex.dart';

class Base extends StatelessWidget {
  const Base({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor('#0A0807'),
      body: Stack(
        children: [
          Positioned(
              left: -110,
              top: -20,
              child: Image.asset('assets/images/right.png')),
          Positioned(
              right: -110,
              top: -20,
              child: Image.asset('assets/images/left.png')),
          Positioned(
              left: -100,
              bottom: 0,
              child: Image.asset('assets/images/t-2.png')),
          Positioned(
              right: -100,
              bottom: 0,
              child: Image.asset('assets/images/t-3.png')),
          Positioned(
              bottom: 60,
              child: SizedBox(
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/banner.png',
                      height: 130,
                      fit: BoxFit.fitWidth,
                    ),
                    FloatingActionButton(
                        backgroundColor: HexColor('#E98400'),
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ))
                  ],
                ),
              )),
          body,
        ],
      ),
    );
  }
}
