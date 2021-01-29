import 'package:flutter/material.dart';

class Pmcare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PM Care Funds'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(10, 50, 10, 0)),
          Center(child: 
          Text("Details",style: TextStyle(fontSize:25,fontFamily: 'Georgia',fontWeight: FontWeight.bold)),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
            child: Column(
              children: <Widget>[

          Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 5)),
          Text("Name of the Account : PM CARES",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
          Padding(padding: EdgeInsets.only(top: 8)),
          Text("Account Number : 2121PM20202",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
          Padding(padding: EdgeInsets.only(top: 8)),
          Text("IFSC Code : SBIN0000691",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
          Padding(padding: EdgeInsets.only(top: 8)),
          Text("SWIFT Code : SBININBB104",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
          Padding(padding: EdgeInsets.only(top: 8)),
          Text("Name of Bank & Branch : State Bank of India, New Delhi Main Branch",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
          Padding(padding: EdgeInsets.only(top: 8)),
          Text("UPI ID : pmcares@sbi",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
          Padding(padding: EdgeInsets.only(top: 8)),

              ],
            ),
          )
        ],
      ),
    );
  }
}