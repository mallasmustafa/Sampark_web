import 'package:flutter/material.dart';

class ScreenShotWidget extends StatelessWidget {
  const ScreenShotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    var images = [
      "assets/Images/1.png",
      "assets/Images/2.png",
      "assets/Images/3.png",
      "assets/Images/4.png",
    ];
    return Column(
      children: [
        Text(
          "Screenshots",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        const SizedBox(height: 40),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: images
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Image.asset(
                          e,
                          // height: 300,
                          width: width / 5,
                        ),
                      ))
                  .toList()),
        )
      ],
    );
  }
}
