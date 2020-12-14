import 'package:flutter/material.dart';


class power extends StatefulWidget {
  @override
  _powerState createState() => _powerState();
}
String _poweritems;
String _poweritems1;
class _powerState extends State<power> {
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
      holder = _poweritems;
      holder1 = _poweritems1;
      if (holder == 'Watt' && holder1 == 'Watt') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Watt' && holder1 == 'Joule/second') {
        input = int.parse(controller1.text);
        output = (input*1).toString();
      }
      if (holder == 'Watt' && holder1 == 'Kilowatt') {
        input = int.parse(controller1.text);
        output = (input /1000).toString();
      }
      if (holder == 'Watt' && holder1 == 'Newton-meter/second') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Joule/second' && holder1 == 'Watt') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Joule/second' && holder1 == 'Joule/second') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Joule/second' && holder1 == 'Kilowatt') {
        input = int.parse(controller1.text);
        output = (input /1000).toString();
      }
      if (holder == 'Joule/second' && holder1 == 'Newton-meter/second') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Kilowatt' && holder1 == 'Watt') {
        input = int.parse(controller1.text);
        output = (input *1000).toString();
      }
      if (holder == 'Kilowatt' && holder1 == 'Joule/second') {
        input = int.parse(controller1.text);
        output = (input *1000).toString();
      }
      if (holder == 'Kilowatt' && holder1 == 'Kilowatt') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Kilowatt' && holder1 == 'Newton-meter/second') {
        input = int.parse(controller1.text);
        output = (input *1000).toString();
      }
      if (holder == 'Newton-meter/second' && holder1 == 'Watt') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Newton-meter/second' && holder1 == 'Joule/second') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Newton-meter/second' && holder1 == 'Kilowatt') {
        input = int.parse(controller1.text);
        output = (input /1000).toString();
      }
      if (holder == 'Newton-meter/second' && holder1 == 'Newton-meter/second') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Power'),
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
                DropdownMenuItem<String>(child: Text('Watt'),value: 'Watt'),
                DropdownMenuItem<String>(child: Text('Joule/second'),value: 'Joule/second'),
                DropdownMenuItem<String>(child: Text('Kilowatt'),value: 'Kilowatt'),
                DropdownMenuItem<String>(child: Text('Newton-meter/second'),value: 'Newton-meter/second')
              ],
              onChanged: (String value) {
                setState(() {
                  _poweritems = value;
                });
              },
              hint: Text('Select'),
              value: _poweritems,
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
                DropdownMenuItem<String>(child: Text('Watt'),value: 'Watt'),
                DropdownMenuItem<String>(child: Text('Joule/second'),value: 'Joule/second'),
                DropdownMenuItem<String>(child: Text('Kilowatt'),value: 'Kilowatt'),
                DropdownMenuItem<String>(child: Text('Newton-meter/second'),value: 'Newton-meter/second')
              ],
              onChanged: (String value) {
                setState(() {
                  _poweritems1 = value;
                });
              },
              hint: Text('Select'),
              value: _poweritems1,
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
