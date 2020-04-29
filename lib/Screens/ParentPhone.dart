import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/Widget/ButtonWidget.dart';
import 'package:work/Widget/MainTextFeild.dart';



class ParentPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(height: 300,width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 240,
                    child: Image(image: AssetImage("assets/phone.png"),fit: BoxFit.contain,),
                  ),
                  Text("Please add your children",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor,fontSize: 17),),
                  Text("numbers",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor,fontSize: 17),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),

              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff267972),
                ),
                        child: Center(
                          child: MainTextField(
                            obscure: false,
                            textStream: Provider.of<ProviderData>(context).parentPhoneStream,
                            textChange:Provider.of<ProviderData>(context).parentPhoneChange ,
                            inputType: TextInputType.phone,
                            hintText: "Enter Your son Phone",

                            widget: Container(width: 2,height: 2,),
                          ),
                        ),
                    ),

            ),
            SizedBox(height: 20,),

            Container(
              width: MediaQuery.of(context).size.width/1.4,
              child: Consumer<ProviderData>(
                builder: (context,phoneData,child){
                  return ListView.builder(
                      shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final phone =phoneData.phones[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15,top: 15),
                        child: PhoneWidget(phone: phone.phone,delete: (){
                          phoneData.deletePhone(phone);
                        },),
                      );
                    },
                    itemCount: phoneData.phoneCount,
                  );
                },
              ),
            ),

            SizedBox(height: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width/1.4,
                  child: ButtonWidget(height: 60,color: mainColor ,onPressed: (){
                    Provider.of<ProviderData>(context).addPhone(Provider.of<ProviderData>(context).parentPhone.value);
                  },textColor: Colors.white,borderColor: mainColor,text: "ADD Phone",),

                ),
                SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        child: ButtonWidget(text: "Back",borderColor: mainColor,textColor: mainColor,onPressed: (){},height: 60,color: Colors.white,),
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        child: ButtonWidget(text: "Done",borderColor: mainColor,textColor:Colors.white ,onPressed: (){
                          Provider.of<ProviderData>(context).openParentHomePage(context);

                        },height: 60,color: mainColor,),
                      ),
                    ],
                  ),
                )
              ],
              ),
            ),
            SizedBox(height: 15,),

          ],
        ),
      ),
    ));
  }
}

class PhoneWidget extends StatelessWidget {
  final String phone;
  final Function delete;
  const PhoneWidget({
    this.phone, this.delete
  }) ;

  @override
  Widget build(BuildContext context) {
    return
      Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),

      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width/1.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffe6e6ea),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 10,),
            Text("$phone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            Spacer(),
            Container(
              width: 70,
              child: MaterialButton(onPressed: delete,

                shape: RoundedRectangleBorder(

                  side: BorderSide(width: 3,color:Color(0xffe6e6ea) ,style: BorderStyle.solid),

                  borderRadius: BorderRadius.all(Radius.circular(10),),),

                minWidth: 70,
                height: 60,
                child: Center( child: Icon(Icons.close,size: 40,)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
