import 'package:flutter/material.dart';

class length extends StatefulWidget {
  @override
  _lengthState createState() => _lengthState();
}
String _lengthitems;
String _lengthitems1;

class _lengthState extends State<length> {
  String holder = '';
  String holder1 = '';
  int input;
  String output='0';
  final TextEditingController controller1 = TextEditingController(text:'0');
  void process(){
    setState(() {
      if(holder == '' || holder1 == ''){
        output = 'Choose Unit';
      }
      holder = _lengthitems;
      holder1 = _lengthitems1;
      if (holder == 'Kilometer' && holder1 == 'Millimeter') {
        input = int.parse(controller1.text);
        output = (input * 1000000).toString();
      }
      if (holder == 'Kilometer' && holder1 == 'Kilometer') {
        input = int.parse(controller1.text);
        output = (input * 1).toString();
      }
      if (holder == 'Kilometer' && holder1 == 'Decimeter') {
        input = int.parse(controller1.text);
        output = (input * 10000).toString();
      }
      if (holder == 'Kilometer' && holder1 == 'Centimeter') {
        input = int.parse(controller1.text);
        output = (input * 100000).toString();
      }
      if (holder == 'Millimeter' && holder1 == 'Millimeter') {
        input = int.parse(controller1.text);
        output = (input * 1).toString();
      }
      if (holder == 'Millimeter' && holder1 == 'Kilometer') {
        input = int.parse(controller1.text);
        output = (input / 1000000).toString();
      }
      if (holder == 'Millimeter' && holder1 == 'Decimeter') {
        input = int.parse(controller1.text);
        output = (input / 100).toString();
      }
      if (holder == 'Millimeter' && holder1 == 'Centimeter') {
        input = int.parse(controller1.text);
        output = (input / 10).toString();
      }
      if (holder == 'Decimeter' && holder1 == 'Millimeter') {
        input = int.parse(controller1.text);
        output = (input * 100).toString();
      }
      if (holder == 'Decimeter' && holder1 == 'Kilometer') {
        input = int.parse(controller1.text);
        output = (input / 10000).toString();
      }
      if (holder == 'Decimeter' && holder1 == 'Decimeter') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Decimeter' && holder1 == 'Centimeter') {
        input = int.parse(controller1.text);
        output = (input *10).toString();
      }
      if (holder == 'Centimeter' && holder1 == 'Millimeter') {
        input = int.parse(controller1.text);
        output = (input * 10).toString();
      }
      if (holder == 'Centimeter' && holder1 == 'Kilometer') {
        input = int.parse(controller1.text);
        output = (input / 100000).toString();
      }
      if (holder == 'Centimeter' && holder1 == 'Decimeter') {
        input = int.parse(controller1.text);
        output = (input / 10).toString();
      }
      if (holder == 'Centimeter' && holder1 == 'Centimeter') {
        input = int.parse(controller1.text);
        output = (input * 1).toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Length'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: 'Enter Value',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              keyboardType: TextInputType.number,
              controller: controller1,
            ),
            width: 390,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(child: Text('Millimeter'),value: 'Millimeter',),
                DropdownMenuItem<String>(child: Text('Kilometer'),value: 'Kilometer',),
                DropdownMenuItem<String>(child: Text('Decimeter'),value: 'Decimeter',),
                DropdownMenuItem<String>(child: Text('Centimeter'),value: 'Centimeter',)
              ],
              onChanged: (String value) {
                setState(() {
                  _lengthitems = value;
                });
              },
              hint: Text('Select'),
              value: _lengthitems,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26,
                    width: 1),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: 'Output : $output',labelStyle: TextStyle(color: Colors.grey[700]),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              keyboardType: TextInputType.number,
              enabled: false,
            ),
            width: 390,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(child: Text('Millimeter'),value: 'Millimeter',),
                DropdownMenuItem<String>(child: Text('Kilometer'),value: 'Kilometer',),
                DropdownMenuItem<String>(child: Text('Decimeter'),value: 'Decimeter',),
                DropdownMenuItem<String>(child: Text('Centimeter'),value: 'Centimeter',)
              ],
              onChanged: (String value) {
                setState(() {
                  _lengthitems1 = value;
                });
              },
              hint: Text('Select'),
              value: _lengthitems1,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26,
                  width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          RaisedButton(
              child: Text('Process'),
              splashColor: Colors.deepOrange[400],
              onPressed: process)
        ],
      ),
    );
  }
}
