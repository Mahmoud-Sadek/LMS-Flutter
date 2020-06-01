import 'package:flutter/material.dart';
import 'package:work/SharedWidget/MainTextFeild.dart';
import 'package:work/ParentScreens/ParentWidget/ParentAppBar.dart';
import 'package:provider/provider.dart';
import '../../Provider/contact.dart';
import '../../Model/contact_item.dart';

class ContactUS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<Contact>(context);
    return CustomScrollView(
      slivers: <Widget>[
        ParentAppBar(
          imageUrl: "assets/contactus.png",
          widget: Container(
            width: 0,
            height: 0,
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(<Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: MainTextField(
                      hintText: 'name',
                      inputType: TextInputType.text,
                      obscure: false,
                      textChange: data.fullNameChange,
                      textStream: data.fullNameStream,
                      widget: Container(
                        height: 0.0,
                        width: 0.0,
                      ),
                    ),
                    flex: 1,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: MainTextField(
                      hintText: 'phone',
                      inputType: TextInputType.phone,
                      obscure: false,
                      textChange: data.phoneNumberChange,
                      textStream: data.phoneNumberStream,
                      widget: Container(
                        height: 0.0,
                        width: 0.0,
                      ),
                    ),
                    flex: 1,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MainTextField(
                  hintText: 'email',
                  inputType: TextInputType.emailAddress,
                  obscure: false,
                  textChange: data.emailChange,
                  textStream: data.emailStream,
                  widget: Container(
                    height: 0.0,
                    width: 0.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MainTextField(
                  hintText: 'subject',
                  inputType: TextInputType.text,
                  obscure: false,
                  textChange: data.subjectChange,
                  textStream: data.subjectStream,
                  widget: Container(
                    height: 0.0,
                    width: 0.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MainTextField(
                  hintText: 'contact us',
                  inputType: TextInputType.text,
                  obscure: false,
                  textChange: data.contactUsChange,
                  textStream: data.contactUsStream,
                  widget: Container(
                    height: 0.0,
                    width: 0.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  child: StreamBuilder(
                    stream: data.messageStream,
                    builder: (context, snapshot) {
                      return TextField(
                        onChanged: data.messageChange,
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration.collapsed(
                          hintText: "your message",
                          hintStyle: TextStyle(fontSize: 20),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 220,
                padding: EdgeInsets.fromLTRB(20, 16, 20, 14),
                child: FlatButton(
                  onPressed: () {
                    ContactUsModel body = ContactUsModel();
                    data.postContact(body);
                  },
                  child: Text(
                    "send",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xff0E4A45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          )
        ]))
      ],
    );
  }
}

class VisitorTextField extends StatelessWidget {
  final TextEditingController myController;
  final String hint;
  final int maxLines;

  VisitorTextField({this.myController, this.hint, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: TextField(
        controller: myController,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
