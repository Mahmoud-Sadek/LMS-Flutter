import 'package:flutter/material.dart';

class DownloadProgress extends StatefulWidget {
  @override
  _DownloadProgressState createState() => _DownloadProgressState();
}

class _DownloadProgressState extends State<DownloadProgress> {
  bool dowmloading=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: dowmloading?
        Container(
          height: 120,
          width: 200,
          child: Card(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                SizedBox(height: 10,),
                Text("Downloading File",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        )
        :Container(),
      ),
    );
  }
}
