import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';


class FaceBookPage extends StatefulWidget {
 final String webappName;
 final String url;
  FaceBookPage({this.webappName,this.url});
  @override
  _FaceBookPageState createState() => _FaceBookPageState();
}

class _FaceBookPageState extends State<FaceBookPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: SafeArea(
              child: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
    ),
      ),
    );
  }
}