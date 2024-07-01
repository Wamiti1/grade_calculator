import 'package:flutter/material.dart';
import 'package:grade_calculator/custom/textformfield.dart';
import 'package:grade_calculator/screens/data.dart';
import 'package:grade_calculator/screens/display.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();

}

class _InputState extends State<Input> {
  final formKey = GlobalKey<FormState>();
  final mathsController = TextEditingController();
  final englishController = TextEditingController();
  final kiswahiliController = TextEditingController();
  final physicsController = TextEditingController();
  final chemistryController = TextEditingController();
  final biologyController = TextEditingController();
  final historyController = TextEditingController();
  final compController = TextEditingController();
  
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Grade Calculator'),),),

        body: ListView(
          children: [Form(
            key: formKey,
            child: Column(
              children: [
                
                textformfield(subjects[0], mathsController),
                textformfield('English', englishController),
                textformfield('Kiswahili', kiswahiliController),
                textformfield('Physics', physicsController),
                textformfield('Chemistry', chemistryController),
                textformfield('Biology', biologyController),
                textformfield('History', historyController),
                textformfield('Computer Studies', compController),
              ],
            ),
          ),
          
          OutlinedButton(
            style: const ButtonStyle(padding:WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 20.0))),
                onPressed: (){
                  var isValid = formKey.currentState!.validate();
                
                if(isValid){
                  Map <String, int> results = {
                    '${subjects[0]}': int.parse(mathsController.text),
                    '${subjects[1]}': int.parse(englishController.text),
                    '${subjects[2]}': int.parse(kiswahiliController.text),
                    '${subjects[3]}': int.parse(physicsController.text),
                    '${subjects[4]}': int.parse(chemistryController.text),
                    '${subjects[5]}': int.parse(biologyController.text),
                    '${subjects[6]}': int.parse(historyController.text),
                    '${subjects[7]}': int.parse(compController.text),
                  };



                 

                 Navigator.push(context, MaterialPageRoute(builder: (_)=> Results(results: results)));
          
          
                }
          
                else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    duration: Duration(milliseconds: 2500),
                    content: Text('Please fill all the fields'),
                  ));
                }
          
          
                }, 
                child: const Text('Grade'))
          ]
        ),
        
    );
  }
}