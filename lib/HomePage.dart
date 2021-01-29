import 'dart:convert';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 List userData;
 bool isLoading = true;
 final String url = "https://api.covid19india.org/data.json";

 Future getData() async {

   var response = await http.get(
     Uri.encodeFull(url),
     headers: {"Accept": "application/json"}
   );
 
  List data = jsonDecode(response.body)['statewise'];

  setState(() {
    userData = data;
    isLoading = false;
  });
 }

 @override

 void initState(){
   super.initState();
   this.getData();
 }

  @override
  Widget build(BuildContext context) {
    Widget image_slider_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('asset/1.png'),
          AssetImage('asset/new.png'),
          AssetImage('asset/2.jpg'),
          AssetImage('asset/3.png'),
          AssetImage('asset/4.png')
        ],
        autoplay: true,
        indicatorBgPadding: 0,
        dotColor: Colors.white,

      ),
    );
    return Scaffold(
  
      appBar: AppBar(
        
        centerTitle: true,     
        title: Text("India Covid-19", 
        style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal,color: Colors.white,
        fontFamily: 'Georgia',fontWeight: FontWeight.bold),),
        
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            
            DrawerHeader(
             
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple,Colors.grey,Colors.blue]
            ),        
         ),        
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Image.asset('asset/logo.png',width: 100,height: 100,),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text("Covid-19 Tracker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              
              
            ),
            
            ListTile(
              title: Text('About us', style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
              trailing: Icon(Icons.person_outline),
              onTap: (){
                Navigator.of(context).pushNamed("/a");
                }
            ),
            ListTile(
              title: Text('Notification',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18)),
              trailing: Icon(Icons.notifications),
              onTap: (){
                Navigator.of(context).pushNamed("/b");
              },
            ),
            ListTile(
              title: Text('Privecy Policy',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18)),
              trailing: Icon(Icons.lock),
               onTap: (){
                Navigator.of(context).pushNamed("/c");
               }
            ),
            ListTile(
              title: Text('Pm Care Funds',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18)),
              trailing: Icon(Icons.feedback),
              onTap:()=> Navigator.of(context).pushNamed("/d"),
            ),
            ListTile(
              title: Text('Close',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18)),
              trailing: Icon(Icons.close),
              onTap: (){
               Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      
      body: Container(
        
        child: Column(
          children: <Widget>[
          
        image_slider_carousel,
        Expanded(child:        
        Center(
          child: isLoading
          ? CircularProgressIndicator()
          :ListView.builder(
            itemCount: userData == null ? 0 : userData.length,
            itemBuilder: (context, index){
              return Card(
                
                child:              
                Row(
                  children: <Widget>[
                   
                    Padding(padding: EdgeInsets.all(10.0)),
                    Expanded(
                      child:Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,                       
                        children: <Widget>[
                         
                          Container(
                            child: Center( 
                            child:Text(userData[index]['state'],style: TextStyle(fontSize: 22,
                            fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                          )),

                          Padding(padding: EdgeInsets.only(top: 10)),

                          Text("Confirmed Case : ${userData[index]['confirmed']}",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')), 
                          Text("Active Case : ${userData[index]['active']}",style: TextStyle(fontSize: 18,fontFamily: 'Georgia')),
                          Text("Deaths : ${userData[index]['deaths']}",style: TextStyle(fontSize: 18,fontFamily: 'Georgia',color: Colors.red)),
                          Text("Recovered : ${userData[index]['recovered']}",style: TextStyle(fontSize: 18,fontFamily: 'Georgia',color: Colors.black)),

                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          
                        ],
                      ))
                  ],
                )
              );
            },
          ),
        )),
          
          ],
        )
      ),
      
    );
  }
}