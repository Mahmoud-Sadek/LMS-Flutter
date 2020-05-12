import 'dart:async';

import 'package:work/Provider/TextBloc.dart';

class Validators{
static Bloc bloc = Bloc();
  final validateEmail = StreamTransformer<String, String>.fromHandlers(

      handleData: ( email, sink){
        RegExp hexColor = RegExp("^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*");
        bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

        if(email.contains('@gmail.com')||email.contains('@yahoo.com') ){
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

  final validateConfirmPassword = StreamTransformer<String,String>.fromHandlers(

      handleData: ( password, sink){

        if(password.length > 6 ){
          sink.add(password);
        }  else{
          sink.addError("Password shuld be 6 or more ");
        }
      }
  );
  final validateName = StreamTransformer<String,String>.fromHandlers(

      handleData: ( name, sink){

        if (name.length<=9 ||name.contains(RegExp(r'^[a-z-0-9_\-=@,\.;]+$'))!=true||  name.contains("-")== true || name.contains(";") ==true && name.contains(",")==true || name.contains("@")==true|| name.contains("=")==true || name.contains("_")== true) {
          sink.addError("Un valid  characters ");
        }  else{
          sink.add(name);
        }
      }
  );



}

