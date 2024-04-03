import 'package:flutter/material.dart';

import '../Widgets/divider.dart';
import '../Widgets/screenshot.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          "SAMPARK",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/Images/favicon.png",
            width: 30,
          ),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.download),
            label: const Text(
              "Dawnload",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/Images/logo.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "SAMPARK",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
              Text(
                "The Best App For Connecting with",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              Text(
                "Your Friends",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              const Text(
                "App version 1.0",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 700,
                child: Text(
                  "You can messages with people and calls video calls",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.android,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Download App",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                width: width / 1.2,
                height: width / 1.2,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/Images/main.png"),
              ),
              const SizedBox(height: 80),
              const MyDivider(),
              const SizedBox(height: 40),
              const ScreenShotWidget(),
              const SizedBox(height: 40),
              Center(
                child: Text(
                  "Made with By Mallas Mustafa",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
