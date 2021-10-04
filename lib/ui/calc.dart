import 'package:flutter/material.dart';
class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  var _values ='Add'; 
  var value;
  var _operation =['Add','Subtract','Multiply','Divide'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:Text('My Calculator'),
        backgroundColor: Colors.blue,
          ),
        body: ListView(
          children: <Widget>[
            // first item
            DropdownButton<String>(
              value = _values,
              items: _operation.map((String values){
               return DropdownMenuItem<String>(
                value :  _values,
                 child:Text(values)
               );
            }).toList(),
            onChanged: (value){
              setState(() {
                _values= value;
                print('value changed to $value');
              });
              
            },
            ),
//Second item
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'First Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
              ),
              ),
          ),
          // third Item
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Second Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
              ),
              ),
          ),
        // forth item
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('hhh'),
        ),
        // fifth item
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children:<Widget>[
              Expanded(
                              child: RaisedButton(
                    child: Text('Calculate'),
                    onPressed: (){},
                ),
              ),
              Expanded(
                              child: RaisedButton(
                    child: Text('Clear'),
                    onPressed: (){},
                ),
              ),
            ]
          ),
        )

          ],
        )
    );
  }
}