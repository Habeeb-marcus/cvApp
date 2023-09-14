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
    fullNameController.text = '${widget.cvData.fullName}';
    slackUsernameController.text = '${widget.cvData.slackUsername}';
    githubHandleController.text = '${widget.cvData.githubHandle}';
    personalBioController.text = '${widget.cvData.personalBio}}';
    //   fullNameController = TextEditingController(text: widget.cvData.fullName);
    // slackUsernameController =
    //     TextEditingController(text: widget.cvData.slackUsername);
    // githubHandleController =
    //     TextEditingController(text: widget.cvData.githubHandle);
    // personalBioController =
    //     TextEditingController(text: widget.cvData.personalBio);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Edit Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: fullNameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
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
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Personal Bio',
              ),
            ),  
            GeneralTextField(
              hintText: 'Personal Bio',
              textController: personalBioController,
              onChanged: (value) => setState(() {
                // widget.cvData.fullName = fullNameController.text;
                // widget.cvData.slackUsername = slackUsernameController.text;
                // widget.cvData.githubHandle = githubHandleController.text;
                widget.cvData.personalBio = personalBioController.text;
              
              }),
            ),
        
       
          
            SizedBox(height: 16.0),

            ElevatedButton(
              onPressed: (){
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
            
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ViewPage(cv: cv),
                //   ),
                // );
              },
              child: Text('Save CV'),
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