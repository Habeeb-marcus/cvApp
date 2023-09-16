import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_portfolio/core/cv_model.dart';
import 'package:my_portfolio/ui/screens/edit_page.dart';
import 'package:my_portfolio/utils/size_calculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
     final CV cvData = CV(
    fullName: 'Habeeb Makusota',
    slackUsername: 'future_code',
    githubHandle: 'Habeeb-marcus',
    personalBio:
        'I am a Flutter developer with a passion for building scalable and maintainable software solutions. I am a team player and I love to learn new things. I am a fast learner and I am always open to new opportunities.',
  );
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0Xff252522),
      appBar: AppBar(
        title: const Text('My CV'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(
                    cvData: cvData,
                  ),
                ),
              );
            },
            child: const Text(
              ' Edit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundColor: Color(0xffad9c00),
                child: CircleAvatar(
                  radius: 98,
                  backgroundImage: AssetImage(
                    'assets/my_pics.png',
                  ),
                ),
              ),
              SizedBox(height: sizer(false, 20, context)),

              Text(
                cvData.fullName,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  // fontStyle: FontStyle.italic
                ),
              ),
              const SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    cvData.slackUsername,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white38,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text('|'),
                  SizedBox(width: 10),
                  Text(
                    cvData.githubHandle,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'PERSONAL BIO: ',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xffad9c00),
                    fontWeight: FontWeight.bold,
                    
                  ),
                  children: [
                    TextSpan(
                      text:  cvData.personalBio,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              Text(
                'SKILLS', 

                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xffad9c00),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Flutter',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Dart',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Git',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Github',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Firebase',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Figma',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'HTML',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'CSS',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'JavaScript',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Text(
                'works Experience',
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xffad9c00),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
             
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'FrontEnd Developer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            
              const SizedBox(height: 10),
            
              ListTile(
                tileColor: Colors.white,
                leading: const Icon(
                  Icons.work,
                  color: Color(0xffad9c00),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: const Text(
                  'FrontEnd Developer - Blueprint, Nigeria.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Text(
                  'I Worked on the development of the website.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              ListTile(
                tileColor: Colors.white,
                leading: const Icon(
                  Icons.work,
                  color: Color(0xffad9c00),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: const Text(
                  'Flutter Developer - Blueprint, Nigeria.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Text(
                  'Developed mobile App (mEd app) and fix bugs.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              ListTile(
                tileColor: Colors.white,
                leading: const Icon(
                  Icons.work,
                  color: Color(0xffad9c00),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: const Text(
                  'Flutter Developer - Blueprint, Nigeria.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Text(
                  'Implemented file tagging and other features on the app.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Education',
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xffad9c00),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Physics - B.Sc',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Quantity Surveying - OND',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Text(
                'Hobbies',
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xffad9c00),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.1),
       
              const Text(
                '© 2023 Habeeb Makusota',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffad9c00),
                  fontWeight: FontWeight.bold,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
