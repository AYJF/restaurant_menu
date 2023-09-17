import 'package:flutter/material.dart';
import 'package:restaurant_menu/base/base.dart';
import 'package:restaurant_menu/data/data.dart';
import 'package:restaurant_menu/tools/color_hex.dart';

class Tacos extends StatelessWidget {
  const Tacos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
        onPressed: () => Navigator.of(context).pushNamed('/dashboard'),
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
                '🌮 TACOS 🌮',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CaveatBrush',
                    fontSize: 28),
              ),
              const SizedBox(height: 25),
              const _Tacos(),
            ],
          ),
        ));
  }
}

class _Tacos extends StatelessWidget {
  const _Tacos({super.key});

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
              height: tacos.length * 60,
              color: HexColor('#E98400'),
            ),
          ),
          const SizedBox(width: 7),
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: SizedBox(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: entrees.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(
                          "- ${tacos[index].title}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'CaveatBrush',
                              fontSize: 18),
                        ),
                        subtitle: Text(
                          tacos[index].subtitle,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'CaveatBrush',
                              fontSize: 16),
                        ),
                        trailing: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: HexColor('#E98400'),
                              shape: BoxShape.circle),
                          child: Text(
                            tacos[index].price.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'CaveatBrush',
                                fontSize: 18),
                          ),
                        ));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
