import 'package:flutter/material.dart';

class time extends StatefulWidget {
  @override
  _timeState createState() => _timeState();
}
String _timeitems;
String _timeitems1;
class _timeState extends State<time> {
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
      holder = _timeitems;
      holder1 = _timeitems1;
      if (holder == 'Seconds' && holder1 == 'Seconds') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Seconds' && holder1 == 'Minutes') {
        input = int.parse(controller1.text);
        output = (input/60).toString();
      }
      if (holder == 'Seconds' && holder1 == 'Hours') {
        input = int.parse(controller1.text);
        output = (input /3600).toString();
      }
      if (holder == 'Seconds' && holder1 == 'Days') {
        input = int.parse(controller1.text);
        output = (input /86400).toString();
      }
      if (holder == 'Minutes' && holder1 == 'Seconds') {
        input = int.parse(controller1.text);
        output = (input *60).toString();
      }
      if (holder == 'Minutes' && holder1 == 'Minutes') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Minutes' && holder1 == 'Hours') {
        input = int.parse(controller1.text);
        output = (input /60).toString();
      }
      if (holder == 'Minutes' && holder1 == 'Days') {
        input = int.parse(controller1.text);
        output = (input /1440).toString();
      }
      if (holder == 'Hours' && holder1 == 'Seconds') {
        input = int.parse(controller1.text);
        output = (input *3600).toString();
      }
      if (holder == 'Hours' && holder1 == 'Minutes') {
        input = int.parse(controller1.text);
        output = (input *60).toString();
      }
      if (holder == 'Hours' && holder1 == 'Hours') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Hours' && holder1 == 'Days') {
        input = int.parse(controller1.text);
        output = (input /24).toString();
      }
      if (holder == 'Days' && holder1 == 'Seconds') {
        input = int.parse(controller1.text);
        output = (input *86400).toString();
      }
      if (holder == 'Days' && holder1 == 'Minutes') {
        input = int.parse(controller1.text);
        output = (input *1440).toString();
      }
      if (holder == 'Days' && holder1 == 'Hours') {
        input = int.parse(controller1.text);
        output = (input *24).toString();
      }
      if (holder == 'Days' && holder1 == 'Days') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time'),
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
                DropdownMenuItem<String>(child: Text('Seconds'),value: 'Seconds',),
                DropdownMenuItem<String>(child: Text('Minutes'),value: 'Minutes',),
                DropdownMenuItem<String>(child: Text('Hours'),value: 'Hours',),
                DropdownMenuItem<String>(child: Text('Days'),value: 'Days',)
              ],
              onChanged: (String value) {
                setState(() {
                  _timeitems = value;
                });
              },
              hint: Text('Select'),
              value: _timeitems,
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
                DropdownMenuItem<String>(child: Text('Seconds'),value: 'Seconds',),
                DropdownMenuItem<String>(child: Text('Minutes'),value: 'Minutes',),
                DropdownMenuItem<String>(child: Text('Hours'),value: 'Hours',),
                DropdownMenuItem<String>(child: Text('Days'),value: 'Days',)
              ],
              onChanged: (String value) {
                setState(() {
                  _timeitems1 = value;
                });
              },
              hint: Text('Select'),
              value: _timeitems1,
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
