import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sampark_web/Widgets/divider.dart';
import 'package:sampark_web/Widgets/main_info.dart';
import 'package:sampark_web/Widgets/screenshot.dart';
import 'package:sampark_web/Widgets/web_feature_widget.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            "assets/Images/logo.png",
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
            children: [
              const MainInfo(),
              const SizedBox(height: 40),
              const MyDivider(),
              const SizedBox(height: 40),
              Text(
                "Features",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureWidget(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "Sampark App is A Easy to use app where you can connect with other",
                  ),
                  WebFeatureWidget(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "Sampark App is A Easy to use app where you can connect with other",
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureWidget(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "Sampark App is A Easy to use app where you can connect with other",
                  ),
                  WebFeatureWidget(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "Sampark App is A Easy to use app where you can connect with other",
                  ),
                ],
              ),
              const SizedBox(height: 80),
              const MyDivider(),
              const SizedBox(height: 40),
              const ScreenShotWidget(),
              const SizedBox(height: 40),
              Text(
                "Made with By Mallas Mustafa",
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
