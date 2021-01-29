import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: Column(
        
        
        children: <Widget>[
          Card(

            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

          Padding(padding: EdgeInsets.only(top:20.0)),
          Text("This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text("Cookies",style: TextStyle(fontSize: 18,fontFamily: 'Georgia',fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text("Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')), 
          Padding(padding: EdgeInsets.only(top: 10)),
          Text("Security",style: TextStyle(fontSize: 18,fontFamily: 'Georgia',fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text("I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text("Contact Us",style: TextStyle(fontSize:18,fontFamily: 'Georgia',fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text("If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at covid19traker@gmail.com.",style: TextStyle(fontSize: 18,fontFamily: 'Georgia'))


              ],
            ),
          )
          
        ],
      ),
      );
      
    
  }
}