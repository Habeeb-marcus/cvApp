import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_portfolio/core/cv_model.dart';
import 'package:my_portfolio/ui/components/text_field.dart';

class EditPage extends StatefulWidget {
 final CV cvData;
  const EditPage({super.key, required this.cvData});
  

  @override
  State<EditPage> createState() => _EditPageState();
}
// CV cv = CV();


class _EditPageState extends State<EditPage> {

  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController personalBioController = TextEditingController();

  @override
  void initState(){
    setState(() {
         fullNameController.text = '${widget.cvData.fullName}';
      slackUsernameController.text = '${widget.cvData.slackUsername}';
      githubHandleController.text = '${widget.cvData.githubHandle}';
      personalBioController.text = '${widget.cvData.personalBio}}';
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffad9c00),
        title: Text('Edit Page'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        )
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: fullNameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                suffixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: slackUsernameController,
              decoration: InputDecoration(
                labelText: 'Slack Username',
                
               
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: githubHandleController,
              decoration: InputDecoration(
                labelText: 'Github Handle',
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              controller: personalBioController,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Personal Bio',
              ),
            ),  
        
       
          
            SizedBox(height: MediaQuery.of(context).size.height * 0.33),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton(
                onPressed: (){
                    print(
                        '------>>>${widget.cvData.fullName} after chnges has been made');
                  setState(() {
                  
                    widget.cvData.fullName = fullNameController.text;
                    widget.cvData.slackUsername = slackUsernameController.text;
                    widget.cvData.githubHandle = githubHandleController.text;
                    widget.cvData.personalBio = personalBioController.text;
                    CV(
                      fullName: fullNameController.text,
                      slackUsername: slackUsernameController.text,
                      githubHandle: githubHandleController.text,
                      personalBio: personalBioController.text,
                    );
                  });
                  Navigator.pop(context, CV(
                      fullName: fullNameController.text,
                      slackUsername: slackUsernameController.text,
                      githubHandle: githubHandleController.text,
                      personalBio: personalBioController.text,
                    ));
            
                },
                child: Text('Save CV'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xffad9c00),
                  ),
                )
              ),  
            ),
          ],
        ),
      ),
    );

  }
    @override
  void dispose() {
    fullNameController.dispose();
    slackUsernameController.dispose();
    githubHandleController.dispose();
    personalBioController.dispose();
    super.dispose();
  }
}