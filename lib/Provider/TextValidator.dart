import 'dart:async';

class Validators{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(

      handleData: ( email, sink){
        RegExp hexColor = RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');

        if(email.contains('@.com') && email.length >=13 ){
          sink.add(email);

        }  else{
          sink.addError("Enter valid email");


        }
      }
  );

//  &&  hexColor.hasMatch(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$')


  final validatePassword = StreamTransformer<String,String>.fromHandlers(

      handleData: ( password, sink){

        if(password.length > 6){
          sink.add(password);
        }  else{
          sink.addError("Password shuld be 6 or more ");
        }
      }
  );


}