import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';



class contact extends StatefulWidget {
  @override
  _contactState createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            width: 392,
            child: Text('Download Our Club App.',style:
            TextStyle(fontSize: 18.0,color: Colors.black,fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(border: Border.all(color: Colors.black26,width: 1)),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Text("Playstore :",style: TextStyle(fontSize: 18),),
                IconButton(
                    icon: Image(image: AssetImage("assets/playstore.jpg")),
                    onPressed: ()async{
                      const url = 'https://play.google.com/store/apps/details?id=com.feelthecoder.dsc';
                      if (await canLaunch(url)){
                        await launch(url);
                      }
                      else{
                        throw 'Could not launch $url';
                      }
                    })
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(17),
            width: 392,
            child: Text('Contact Our Club.',style:
            TextStyle(fontSize: 18.0,color: Colors.black,fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(border: Border.all(color: Colors.black26,width: 1)),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("BlogSpot :",style: TextStyle(fontSize: 18),),
                    IconButton(
                        icon: Icon(MdiIcons.blogger,color: Colors.deepOrange[300],),
                        onPressed: ()async{
                          const url = 'https://dscrecbijnor.blogspot.com/';
                          if (await canLaunch(url)){
                            await launch(url);
                          }
                          else{
                            throw 'Could not launch $url';
                          }
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Instagram :",style: TextStyle(fontSize: 18),),
                    IconButton(
                        icon: Icon(MdiIcons.instagram,color: Colors.pink[500],),
                        onPressed: ()async{
                          const url = 'https://www.instagram.com/dscrecbijnor/';
                          if (await canLaunch(url)){
                            await launch(url);
                          }
                          else{
                            throw 'Could not launch $url';
                          }
                        }),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Twitter :",style: TextStyle(fontSize: 18),),
                    IconButton(
                        icon: Icon(MdiIcons.twitter,color: Colors.lightBlue,),
                        onPressed: ()async{
                          const url = 'https://mobile.twitter.com/dscrec';
                          if (await canLaunch(url)){
                            await launch(url);
                          }
                          else{
                            throw 'Could not launch $url';
                          }
                        }),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Facebook :",style: TextStyle(fontSize: 18),),
                    IconButton(
                        icon: Icon(MdiIcons.facebook,color: Colors.indigo,),
                        onPressed: ()async{
                          const url = 'https://www.facebook.com/dscrecbijnor/';
                          if (await canLaunch(url)){
                            await launch(url);
                          }
                          else{
                            throw 'Could not launch $url';
                          }
                        })
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: ListTile(
                title: Text('Developer\'s Profile',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                subtitle: Text("Click Here"),
                onTap:() {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => contactme()),);}
            ),
            elevation: 5,
            color: Colors.white54,
          )
        ],
      ),
    );
  }
}


class feedback extends StatefulWidget {
  @override
  _feedbackState createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Feedback'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Text('Go through the form and submit your feedback:',style:
            TextStyle(fontSize: 18.0,color: Colors.black,fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(border: Border.all(color: Colors.black26,width: 1)),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Linkify(
                onOpen: _onOpen,
                text:"Feedback Form : https://forms.gle/mKbWE8SVsyj5mkQY9"
            ),
          ),

        ],
      ),
    );
  }
  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}

class contactme extends StatefulWidget {
  @override
  _contactmeState createState() => _contactmeState();
}

class _contactmeState extends State<contactme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer\'s Profile"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10),),
          Container(
            padding: EdgeInsets.only(top: 20),
            width: 200,
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2
              ),
              image: DecorationImage(
                image: AssetImage("assets/me.jpg"),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 180,
            height: 250,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black,
                    width: 2
                ),
                borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10)),
                Text("Ankit Kumar",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),),
                Padding(padding: EdgeInsets.all(3)),
                Text("IT 2nd Year",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),),
                Padding(padding: EdgeInsets.all(5)),
                Text("Rajkiya Engineering College, Bijnor",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
                Padding(padding: EdgeInsets.all(10)),
                Text("Github Profile :",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
               IconButton(
                   icon: Icon(MdiIcons.github,size: 30),
                   onPressed: ()async{
                     const url = 'https://github.com/ankit595';
                     if (await canLaunch(url)){
                       await launch(url);
                     }
                     else{
                       throw 'Could not launch $url';
                     }
                   })
              ],
            )
          ),
        ],
      ),
    );
  }
}

