import 'package:flutter/material.dart';

class WebFeatureWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final String description;
  const WebFeatureWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      height: 120,
      width: width / 3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: 50,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
                Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
