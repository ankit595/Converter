import 'package:flutter/material.dart';


class temperature extends StatefulWidget {
  @override
  _temperatureState createState() => _temperatureState();
}
String _temperatureitems;
String _temperatureitems1;
class _temperatureState extends State<temperature> {
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
      holder = _temperatureitems;
      holder1 = _temperatureitems1;
      if (holder == 'Degree Celsius' && holder1 == 'Degree Celsius') {
        input = int.parse(controller1.text);
        output = (input*1).toString();
      }
      if (holder == 'Degree Celsius' && holder1 == 'Degree Fahrenheit') {
        input = int.parse(controller1.text);
        output = (((input*9)/5)+32).toString();
      }
      if (holder == 'Degree Celsius' && holder1 == 'Degree Rankine') {
        input = int.parse(controller1.text);
        output = (((input*9)/5)+491.67).toString();
      }
      if (holder == 'Degree Celsius' && holder1 == 'Kelvin') {
        input = int.parse(controller1.text);
        output = (input + 273.15).toString();
      }
      if (holder == 'Degree Fahrenheit' && holder1 == 'Degree Celsius') {
        input = int.parse(controller1.text);
        output = (((input-32)*5)/9).toString();
      }
      if (holder == 'Degree Fahrenheit' && holder1 == 'Degree Fahrenheit') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Degree Fahrenheit' && holder1 == 'Degree Rankine') {
        input = int.parse(controller1.text);
        output = (input + 459.67).toString();
      }
      if (holder == 'Degree Fahrenheit' && holder1 == 'Kelvin') {
        input = int.parse(controller1.text);
        output = ((((input-32)*5)/9) + 273.15).toString();
      }
      if (holder == 'Degree Rankine' && holder1 == 'Degree Celsius') {
        input = int.parse(controller1.text);
        output = (((input-491.67)*5)/9).toString();
      }
      if (holder == 'Degree Rankine' && holder1 == 'Degree Fahrenheit') {
        input = int.parse(controller1.text);
        output = (input - 459.67).toString();
      }
      if (holder == 'Degree Rankine' && holder1 == 'Degree Rankine') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Degree Rankine' && holder1 == 'Kelvin') {
        input = int.parse(controller1.text);
        output = ((input *5)/9).toString();
      }
      if (holder == 'Kelvin' && holder1 == 'Degree Celsius') {
        input = int.parse(controller1.text);
        output = (input - 273.15).toString();
      }
      if (holder == 'Kelvin' && holder1 == 'Degree Fahrenheit') {
        input = int.parse(controller1.text);
        output = ((((input - 273.15)*9)/5)+32).toString();
      }
      if (holder == 'Kelvin' && holder1 == 'Degree Rankine') {
        input = int.parse(controller1.text);
        output = (input *1.8).toString();
      }
      if (holder == 'Kelvin' && holder1 == 'Kelvin') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature'),
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
                DropdownMenuItem<String>(child: Text('Degree Celsius'),value: 'Degree Celsius',),
                DropdownMenuItem<String>(child: Text('Degree Fahrenheit'),value: 'Degree Fahrenheit',),
                DropdownMenuItem<String>(child: Text('Degree Rankine'),value: 'Degree Rankine',),
                DropdownMenuItem<String>(child: Text('Kelvin'),value: 'Kelvin',)
              ],
              onChanged: (String value) {
                setState(() {
                  _temperatureitems = value;
                });
              },
              hint: Text('Select'),
              value: _temperatureitems,
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
                DropdownMenuItem<String>(child: Text('Degree Celsius'),value: 'Degree Celsius',),
                DropdownMenuItem<String>(child: Text('Degree Fahrenheit'),value: 'Degree Fahrenheit',),
                DropdownMenuItem<String>(child: Text('Degree Rankine'),value: 'Degree Rankine',),
                DropdownMenuItem<String>(child: Text('Kelvin'),value: 'Kelvin',)
              ],
              onChanged: (String value) {
                setState(() {
                  _temperatureitems1 = value;
                });
              },
              hint: Text('Select'),
              value: _temperatureitems1,
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
