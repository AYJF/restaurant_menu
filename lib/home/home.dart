import 'package:flutter/material.dart';
import 'package:restaurant_menu/base/base.dart';
import 'package:restaurant_menu/data/appetizer.dart';
import 'package:restaurant_menu/tools/color_hex.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Text(
            'Restaurant',
            style: TextStyle(
                color: HexColor('#E98400'),
                fontFamily: 'Brittany',
                fontSize: 38),
          ),
          const SizedBox(height: 20),
          const Text(
            'FOOD MENU',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Belleza', fontSize: 28),
          ),
          const SizedBox(height: 100),
          const Text(
            '🥐 APPETIZERS 🥐',
            style: TextStyle(
                color: Colors.white, fontFamily: 'CaveatBrush', fontSize: 28),
          ),
          const SizedBox(height: 25),
          const _Appetizers(),
        ],
      ),
    ));
  }
}

class _Appetizers extends StatelessWidget {
  const _Appetizers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 0,
            child: Container(
              width: 7,
              height: 240,
              color: HexColor('#E98400'),
            ),
          ),
          const SizedBox(width: 7),
          Expanded(
            flex: 9,
            child: SizedBox(
              height: 250,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: appetizer.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "- ${appetizer[index].title}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'CaveatBrush',
                                fontSize: 18),
                          ),
                          Text(
                            "   ${appetizer[index].subtitle}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'CaveatBrush',
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                width: 10,
                height: 250,
                color: HexColor('#E98400'),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: appetizer.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                          appetizer[index].price.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'CaveatBrush',
                              fontSize: 18),
                        ),
                        const Text(
                          "",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'CaveatBrush',
                              fontSize: 16),
                        )
                      ],
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
