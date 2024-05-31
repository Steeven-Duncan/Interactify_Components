import 'package:flutter/material.dart';
import 'package:version2/widgets/Homepage/PublicationCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const PublicationCard(
              photoProfil: 'assets/images/marx.png',
              username: 'John Doe',
              promotion: 'X2024',
              datePublication: 'Jan 1, 2023',
              Description: 'This is a test publication.',
              image: 'assets/images/marx.png',
              likes: 10,
              commentaires: 5,
      ),
    );
  }
}