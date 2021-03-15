import 'package:flutter/material.dart';
import 'package:flutter_webview_app/model/model.dart';
import 'package:flutter_webview_app/screens/facebook.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  final List<DataClass> dataClass = [
    DataClass(webappName: "FaceBook", url: "https://www.facebook.com/"),
    DataClass(webappName: "Google", url: "https://www.google.com/"),
    DataClass(webappName: "Udemy", url: "https://www.udemy.com/"),
    DataClass(webappName: "Medium", url: "https://medium.com/"),
    DataClass(webappName: "Flutter Packages", url: "https://pub.dev/"),
    DataClass(webappName: "Flutter", url: "https://flutter.dev/"),
    DataClass(webappName: "Instagram", url: "https://www.instagram.com/"),
    DataClass(webappName: "Twitter", url: "https://www.twitter.com/"),
    DataClass(webappName: "Twitch", url: "https://www.twitch.com/"),
    DataClass(webappName: "Flipkart", url: "https://www.flipkart.com/"),
    DataClass(webappName: "Amazon", url: "https://www.amazon.com/"),
  ];
  final List<AppIcons> appIcons = [
    AppIcons(iconName: FontAwesomeIcons.facebook, colorForIcon: Colors.blue),
    AppIcons(iconName: FontAwesomeIcons.google, colorForIcon: Colors.red),
    AppIcons(
        iconName: FontAwesomeIcons.bookOpen, colorForIcon: Colors.deepPurple),
    AppIcons(iconName: FontAwesomeIcons.medium, colorForIcon: Colors.black),
    AppIcons(iconName: FontAwesomeIcons.kiwiBird, colorForIcon: Colors.red),
    AppIcons(iconName: FontAwesomeIcons.gem, colorForIcon: Colors.green),
    AppIcons(iconName: FontAwesomeIcons.instagram, colorForIcon: Colors.pink),
    AppIcons(iconName: FontAwesomeIcons.twitter, colorForIcon: Colors.cyan),
    AppIcons(iconName: FontAwesomeIcons.twitch, colorForIcon: Colors.indigo[600]), 
    AppIcons(iconName: FontAwesomeIcons.shoppingCart, colorForIcon: Colors.lightBlue ),
    AppIcons(iconName: FontAwesomeIcons.amazon, colorForIcon: Colors.orange[600]),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Web App"),
          backgroundColor: Colors.deepOrange,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.2,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: dataClass.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return FaceBookPage(
                            webappName: dataClass[index].webappName,
                            url: dataClass[index].url);
                      }));
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Card(
                        elevation: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Icon(
                                appIcons[index].iconName,
                                size: 35,
                                color: appIcons[index].colorForIcon,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              dataClass[index].webappName,
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
