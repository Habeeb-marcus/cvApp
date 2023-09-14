import 'package:flutter/material.dart';
import 'package:my_portfolio/core/cv_model.dart';
import 'package:my_portfolio/ui/screens/view_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   final CV cvData = CV(
    fullName: 'Habeeb Makusota',
    slackUsername: 'future_code',
    githubHandle: 'Habeeb-marcus',
    personalBio:
        'I am a Flutter developer with a passion for building scalable and maintainable software solutions. I am a team player and I love to learn new things. I am a fast learner and I am always open to new opportunities.',
  );
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
  
      home:  HomePage(cvData: cvData),
    );
  }
}
