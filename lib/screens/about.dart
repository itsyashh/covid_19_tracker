import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
        return Scaffold(
          appBar: AppBar(
            title: Text("About us"),
          ),
         body: Column(
           //mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Padding(padding: EdgeInsets.only(top: 50)),
             Center(child: 
                Text('Covid-19 Tracker',
                       style: TextStyle(fontSize: 25.0, color: Colors.black, fontWeight: FontWeight.bold ),
                   ),
              ),
              Container(
                margin: EdgeInsets.all(30),
                
                child: Column(
                  children: <Widget>[

                     Text("Covid-19 Tracker is a App which gives you Real Time information about Covid-19 positive patient.",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')), 
                     Text("This application show Total indian data as well as States wise data, The main perpose of making this application is to make awareness about this pandemic. Please Wash your hand regularly, Avoid goiging outside, Maintain social distance and Kindly follow instruction given by government of India, Thanks.",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
                     Padding(padding: EdgeInsets.only(top: 50)),
                     Text("Developed by: ",style: TextStyle(fontSize: 18,fontFamily: 'Georgia',fontWeight: FontWeight.bold)),
                     Padding(padding: EdgeInsets.only(top: 10)),
                     Text("Yashwant",style: TextStyle(fontSize: 18,fontFamily: 'Georgia',fontWeight: FontWeight.bold)),

                  ],
                )                            
              )
           ],
         )); 
         
        
  }      
}