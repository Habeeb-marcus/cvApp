import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_portfolio/core/cv_model.dart';
import 'package:my_portfolio/ui/screens/edit_page.dart';
import 'package:my_portfolio/utils/size_calculator.dart';

class HomePage extends StatefulWidget {
  final CV cvData;
  const HomePage({super.key, required this.cvData});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff252522),
      appBar: AppBar(
        title: const Text('My Portfolio'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(
                    cvData: widget.cvData,
                  ),
                ),
              );
              setState(() {
                widget.cvData.fullName = result.fullName;
                widget.cvData.slackUsername = result.slackUsername;
                widget.cvData.githubHandle = result.githubHandle;
                widget.cvData.personalBio = result.personalBio;
              });
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
                widget.cvData.fullName,
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
                    widget.cvData.slackUsername,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white38,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text('|'),
                  SizedBox(width: 10),
                  Text(
                    widget.cvData.githubHandle,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 5),
              // TextButton.icon(
              //   onPressed: (){},
              //    icon: const Icon(Icons.email),
              //    label:  Text(
              //  widget.cvData.githubHandle,
              //   style: const TextStyle(
              //     fontSize: 16,
              //   ),
              // ),),

              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Personal Bio : ',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xffad9c00),
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text:  widget.cvData.personalBio,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white38,
                      ),
                    ),
                  ],
                ),
              ),
              // Text(
              //   widget.cvData.personalBio,
              //   style: const TextStyle(
              //     fontSize: 16,
              //   ),
              // ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
