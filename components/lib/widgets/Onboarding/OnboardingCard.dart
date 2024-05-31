// ignore_for_file: file_names

import 'package:flutter/material.dart';


class OnboardingCard extends StatelessWidget {
  final String title;
  final String path;

  const OnboardingCard({
    super.key,
    required this.title,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    double imageWidth = MediaQuery.of(context).size.height * 0.8;
    double imageHeight = MediaQuery.of(context).size.height * 0.4;

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: imageWidth,
            height: imageHeight,
            child: Image.asset(
              width: imageWidth,
              height: imageHeight,
              path,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
    );
  }
}