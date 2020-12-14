import 'package:flutter/material.dart';




class volume extends StatefulWidget {
  @override
  _volumeState createState() => _volumeState();
}
String _volumeitems;
String _volumeitems1;
class _volumeState extends State<volume> {
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
      holder = _volumeitems;
      holder1 = _volumeitems1;
      if (holder == 'Cubic centimeter' && holder1 == 'Cubic centimeter') {
        input = int.parse(controller1.text);
        output = (input*1).toString();
      }
      if (holder == 'Cubic centimeter' && holder1 == 'Cubic meter') {
        input = int.parse(controller1.text);
        output = (input /1000000).toString();
      }
      if (holder == 'Cubic centimeter' && holder1 == 'Cubic decimeter') {
        input = int.parse(controller1.text);
        output = (input /1000).toString();
      }
      if (holder == 'Cubic centimeter' && holder1 == 'Liter') {
        input = int.parse(controller1.text);
        output = (input /1000).toString();
      }
      if (holder == 'Cubic meter' && holder1 == 'Cubic centimeter') {
        input = int.parse(controller1.text);
        output = (input *1000000).toString();
      }
      if (holder == 'Cubic meter' && holder1 == 'Cubic meter') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Cubic meter' && holder1 == 'Cubic decimeter') {
        input = int.parse(controller1.text);
        output = (input *1000).toString();
      }
      if (holder == 'Cubic meter' && holder1 == 'Liter') {
        input = int.parse(controller1.text);
        output = (input *1000).toString();
      }
      if (holder == 'Cubic decimeter' && holder1 == 'Cubic centimeter') {
        input = int.parse(controller1.text);
        output = (input *1000).toString();
      }
      if (holder == 'Cubic decimeter' && holder1 == 'Cubic meter') {
        input = int.parse(controller1.text);
        output = (input /1000).toString();
      }
      if (holder == 'Cubic decimeter' && holder1 == 'Cubic decimeter') {
        input = int.parse(controller1.text);
        output = (input*1).toString();
      }
      if (holder == 'Cubic decimeter' && holder1 == 'Liter') {
        input = int.parse(controller1.text);
        output = (input*1).toString();
      }
      if (holder == 'Liter' && holder1 == 'Cubic centimeter') {
        input = int.parse(controller1.text);
        output = (input *1000).toString();
      }
      if (holder == 'Liter' && holder1 == 'Cubic meter') {
        input = int.parse(controller1.text);
        output = (input /1000).toString();
      }
      if (holder == 'Liter' && holder1 == 'Cubic decimeter') {
        input = int.parse(controller1.text);
        output = (input*1).toString();
      }
      if (holder == 'Liter' && holder1 == 'Liter') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volume'),
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
                DropdownMenuItem<String>(child: Text('Cubic centimeter'),value: 'Cubic centimeter'),
                DropdownMenuItem<String>(child: Text('Cubic meter'),value: 'Cubic meter'),
                DropdownMenuItem<String>(child: Text('Cubic decimeter'),value: 'Cubic decimeter'),
                DropdownMenuItem<String>(child: Text('Litre'),value: 'Litre')
              ],
              onChanged: (String value) {
                setState(() {
                  _volumeitems = value;
                });
              },
              hint: Text('Select'),
              value: _volumeitems,
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
                DropdownMenuItem<String>(child: Text('Cubic centimeter'),value: 'Cubic centimeter'),
                DropdownMenuItem<String>(child: Text('Cubic meter'),value: 'Cubic meter'),
                DropdownMenuItem<String>(child: Text('Cubic decimeter'),value: 'Cubic decimeter'),
                DropdownMenuItem<String>(child: Text('Litre'),value: 'Litre')
              ],
              onChanged: (String value) {
                setState(() {
                  _volumeitems1 = value;
                });
              },
              hint: Text('Select'),
              value: _volumeitems1,
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
