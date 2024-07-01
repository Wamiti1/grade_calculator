import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';




Padding textformfield(String subject, TextEditingController controller){

return Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextFormField(
      keyboardType: TextInputType.number,
      decoration:  InputDecoration(
        border: const OutlineInputBorder(),
        hintText: '',
        labelText: subject
      ),
      showCursor: true,
      maxLength: 3,
      controller: controller,
      validator:(value){
                          if(value!.isEmpty || int.tryParse(value) == null){
                            return 'Value is not valid';
                          }
                          else{
                            return null;
                          }
                    },


      ));
}





