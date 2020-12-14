import 'package:flutter/material.dart';



class area extends StatefulWidget {
  @override
  _areaState createState() => _areaState();
}
String _areaitems;
String _areaitems1;
class _areaState extends State<area> {
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
      holder = _areaitems;
      holder1 = _areaitems1;
      if (holder == 'Square millimeter' && holder1 == 'Square millimeter') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Square millimeter' && holder1 == 'Square decimeter') {
        input = int.parse(controller1.text);
        output = (input /10000).toString();
      }
      if (holder == 'Square millimeter' && holder1 == 'Square centimeter') {
        input = int.parse(controller1.text);
        output = (input /100).toString();
      }
      if (holder == 'Square millimeter' && holder1 == 'Square kilometer') {
        input = int.parse(controller1.text);
        output = (input /1000000000000).toString();
      }
      if (holder == 'Square decimeter' && holder1 == 'Square millimeter') {
        input = int.parse(controller1.text);
        output = (input *10000).toString();
      }
      if (holder == 'Square decimeter' && holder1 == 'Square decimeter') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
      if (holder == 'Square decimeter' && holder1 == 'Square centimeter') {
        input = int.parse(controller1.text);
        output = (input *100).toString();
      }
      if (holder == 'Square decimeter' && holder1 == 'Square kilometer') {
        input = int.parse(controller1.text);
        output = (input /100000000).toString();
      }
      if (holder == 'Square centimeter' && holder1 == 'Square millimeter') {
        input = int.parse(controller1.text);
        output = (input *100).toString();
      }
      if (holder == 'Square centimeter' && holder1 == 'Square decimeter') {
        input = int.parse(controller1.text);
        output = (input /100).toString();
      }
      if (holder == 'Square centimeter' && holder1 == 'Square centimeter') {
        input = int.parse(controller1.text);
        output = (input*1).toString();
      }
      if (holder == 'Square centimeter' && holder1 == 'Square kilometer') {
        input = int.parse(controller1.text);
        output = (input /10000000000).toString();
      }
      if (holder == 'Square kilometer' && holder1 == 'Square millimeter') {
        input = int.parse(controller1.text);
        output = (input *1000000000000).toString();
      }
      if (holder == 'Square kilometer' && holder1 == 'Square decimeter') {
        input = int.parse(controller1.text);
        output = (input *100000000).toString();
      }
      if (holder == 'Square kilometer' && holder1 == 'Square centimeter') {
        input = int.parse(controller1.text);
        output = (input *10000000000).toString();
      }
      if (holder == 'Square kilometer' && holder1 == 'Square kilometer') {
        input = int.parse(controller1.text);
        output = (input *1).toString();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Area'),
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
                DropdownMenuItem<String>(child: Text('Square millimeter'),value: 'Square millimeter'),
                DropdownMenuItem<String>(child: Text('Square decimeter'),value: 'Square decimeter'),
                DropdownMenuItem<String>(child: Text('Square centimeter'),value: 'Square centimeter'),
                DropdownMenuItem<String>(child: Text('Square kilometer'),value: 'Square kilometer')
              ],
              onChanged: (String value) {
                setState(() {
                  _areaitems = value;
                });
              },
              hint: Text('Select'),
              value: _areaitems,
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
                DropdownMenuItem<String>(child: Text('Square millimeter'),value: 'Square millimeter'),
                DropdownMenuItem<String>(child: Text('Square decimeter'),value: 'Square decimeter'),
                DropdownMenuItem<String>(child: Text('Square centimeter'),value: 'Square centimeter'),
                DropdownMenuItem<String>(child: Text('Square kilometer'),value: 'Square kilometer')
              ],
              onChanged: (String value) {
                setState(() {
                  _areaitems1 = value;
                });
              },
              hint: Text('Select'),
              value: _areaitems1,
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