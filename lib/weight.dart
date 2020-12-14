import 'package:flutter/material.dart';

class weight extends StatefulWidget {
  @override
  _weightState createState() => _weightState();
}
String _weightitems;
String _weightitems1;

class _weightState extends State<weight> {
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
      holder = _weightitems;
      holder1 = _weightitems1;
      if (holder == 'Milligram' && holder1 == 'Milligram') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Milligram' && holder1 == 'Kilogram') {
        input = int.parse(controller1.text);
        output = (input /1000000).toString();
      }
      if (holder == 'Milligram' && holder1 == 'Gram') {
        input = int.parse(controller1.text);
        output = (input /1000).toString();
      }
      if (holder == 'Milligram' && holder1 == 'Quintal') {
        input = int.parse(controller1.text);
        output = (input /100000000).toString();
      }
      if (holder == 'Kilogram' && holder1 == 'Milligram') {
        input = int.parse(controller1.text);
        output = (input *1000000).toString();
      }
      if (holder == 'Kilogram' && holder1 == 'Kilogram') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Kilogram' && holder1 == 'Gram') {
        input = int.parse(controller1.text);
        output = (input *1000).toString();
      }
      if (holder == 'Kilogram' && holder1 == 'Quintal') {
        input = int.parse(controller1.text);
        output = (input /100).toString();
      }
      if (holder == 'Gram' && holder1 == 'Milligram') {
        input = int.parse(controller1.text);
        output = (input *1000).toString();
      }
      if (holder == 'Gram' && holder1 == 'Kilogram') {
        input = int.parse(controller1.text);
        output = (input /1000).toString();
      }
      if (holder == 'Gram' && holder1 == 'Gram') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Gram' && holder1 == 'Quintal') {
        input = int.parse(controller1.text);
        output = (input /100000).toString();
      }
      if (holder == 'Quintal' && holder1 == 'Milligram') {
        input = int.parse(controller1.text);
        output = (input *100000000).toString();
      }
      if (holder == 'Quintal' && holder1 == 'Kilogram') {
        input = int.parse(controller1.text);
        output = (input *100).toString();
      }
      if (holder == 'Quintal' && holder1 == 'Gram') {
        input = int.parse(controller1.text);
        output = (input *100000).toString();
      }
      if (holder == 'Quintal' && holder1 == 'Quintal') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight'),
        backgroundColor: Colors.deepOrangeAccent,
      )      ,
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: 'Enter Value',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                DropdownMenuItem<String>(child: Text('Milligram'),value: 'Milligram'),
                DropdownMenuItem<String>(child: Text('Kilogram'),value: 'Kilogram'),
                DropdownMenuItem<String>(child: Text('Gram'),value: 'Gram'),
                DropdownMenuItem<String>(child: Text('Quintal'),value: 'Quintal')
              ],
              onChanged: (String value) {
                setState(() {
                  _weightitems = value;
                });
              },
              hint: Text('Select'),
              value: _weightitems,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26,
                  width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: 'Output : $output',labelStyle: TextStyle(color:Colors.grey[700]),
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
                DropdownMenuItem<String>(child: Text('Milligram'),value: 'Milligram'),
                DropdownMenuItem<String>(child: Text('Kilogram'),value: 'Kilogram'),
                DropdownMenuItem<String>(child: Text('Gram'),value: 'Gram'),
                DropdownMenuItem<String>(child: Text('Quintal'),value: 'Quintal')
              ],
              onChanged: (String value) {
                setState(() {
                  _weightitems1 = value;
                });
              },
              hint: Text('Select'),
              value: _weightitems1,
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
