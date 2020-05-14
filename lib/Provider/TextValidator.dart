import 'dart:async';

import 'package:work/Provider/TextBloc.dart';

class Validators{
static Bloc bloc = Bloc();
  final validateEmail = StreamTransformer<String, String>.fromHandlers(

      handleData: ( email, sink){
        RegExp hexColor = RegExp("^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*");
        bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

        if( emailValid == true){
          sink.add(email);

        }  else{
          sink.addError("Enter valid email");


        }
      }
  );

//  &&  hexColor.hasMatch(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$')


  final validatePassword = StreamTransformer<String,String>.fromHandlers(

      handleData: ( password, sink){

        if(password.length >= 6){
          sink.add(password);
        }  else{
          sink.addError("Password shuld be 6 or more ");
        }
      }
  );

  final validateConfirmPassword = StreamTransformer<String,String>.fromHandlers(

      handleData: ( password, sink){

        if(password.length >= 6 ){
          sink.add(password);
        }  else{
          sink.addError("Password shuld be 6 or more ");
        }
      }
  );
  final validateName = StreamTransformer<String,String>.fromHandlers(
      handleData: ( name, sink){
        bool nameValid = RegExp(r"/^[a-z ,.'-]+$/i").hasMatch(name);

        if (      name.length<=9 ||name.contains(RegExp(r'^[a-z-0-9_\-=@,\.;]+$'))!=true||  name.contains("-")== true || name.contains(";") ==true && name.contains(",")==true || name.contains("@")==true|| name.contains("=")==true || name.contains("_")== true) {
          sink.add(name);

        }  else{
          sink.addError("Un valid  characters ");

        }
      }
  );
  final validatePhone = StreamTransformer<String,String>.fromHandlers(

      handleData: ( phone, sink){
        bool phoneValid = RegExp(r"(^1300\d{6}$)|(^1800|1900|1902\d{6}$)|(^0[2|3|7|8]{1}[0-9]{8}$)|(^13\d{4}$)|(^04\d{2,3}\d{6}$)").hasMatch(phone.toString());

        if ( phone.length ==11) {
          sink.add(phone);

        }  else{
          sink.addError("Un valid  characters ");

        }
      }
  );



}

