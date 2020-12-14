import 'package:flutter/material.dart';
import 'package:converter/pages.dart';
import 'package:converter/length.dart';
import 'package:converter/weight.dart';
import 'package:converter/time.dart';
import 'package:converter/temperature.dart';
import 'package:converter/area.dart';
import 'package:converter/volume.dart';
import 'package:converter/power.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final drawerHeader =UserAccountsDrawerHeader(
      accountName: Text('Converter',style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17
      ),),
      currentAccountPicture: CircleAvatar(
        radius: 50,
          backgroundImage: AssetImage("assets/converter.png"),
          backgroundColor: Colors.white),
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
      ),
    );

    Future<bool> _onWillPop() {
      return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Are you sure?'),
          content: Text('Do you want to exit App'),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('No'),
            ),
            FlatButton(
              onPressed: () => exit(0),
              /*Navigator.of(context).pop(true)*/
              child: Text('Yes'),
            ),
          ],
        ));
    }


    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Conveter'),
          backgroundColor: Colors.deepOrangeAccent,
          actions: <Widget>[
            PopupMenuButton(
              itemBuilder: (BuildContext context){
                return [
                  PopupMenuItem(child: ListTile(title:Text('Contact'),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => contact()),);},),),
                  PopupMenuItem(child: ListTile(title:Text('Send Feedback'),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => feedback()),);},),),
                ];
              },
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 8),
          children: <Widget>[
            Card(
              child: ListTile(
                  leading: Icon(Icons.linear_scale),
                  title: Text('Length'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => length()),);}
              ),
            ),
            Card(
              child:ListTile(
                  leading: Icon(Icons.line_weight),
                  title: Text('Weight'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => weight()),);}
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text('Time'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => time()),);}
              ),
            ),
            Card(
              child:ListTile(
                  leading: Icon(Icons.device_thermostat),
                  title: Text('Temperature'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => temperature()),);}
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.apps),
                  title: Text('Area'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => area()),);}
              ),
            ),
            Card(
              child:ListTile(
                  leading: Icon(Icons.ad_units_sharp),
                  title: Text('Volume'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => volume()),);}
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.lightbulb_outline),
                  title: Text('Power'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => power()),);}
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(padding: EdgeInsets.zero),
              drawerHeader,
              ListTile(
                  leading: Icon(Icons.linear_scale),
                  title: Text('Length'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => length()),);}
              ),
              ListTile(
                  leading: Icon(Icons.line_weight),
                  title: Text('Weight'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => weight()),);}
              ),
              ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text('Time'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => time()),);}
              ),
              ListTile(
                  leading: Icon(Icons.device_thermostat),
                  title: Text('Temperature'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => temperature()),);}
              ),
              ListTile(
                  leading: Icon(Icons.apps),
                  title: Text('Area'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => area()),);}
              ),
              ListTile(
                  leading: Icon(Icons.ad_units_sharp),
                  title: Text('Volume'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => volume()),);}
              ),
              ListTile(
                  leading: Icon(Icons.lightbulb_outline),
                  title: Text('Power'),
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => power()),);}
              ),
              Padding(padding: EdgeInsets.only(top: 100)),
              Container(
                child: Center(
                  child: Text("Team Dsc",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

