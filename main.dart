import 'package:flutter/material.dart';

void main() { runApp(new MyApp()); }

class MyApp extends StatelessWidget {

@override Widget build(BuildContext context) { // TODO: implement build return new MaterialApp( title: 'Convert', theme: new ThemeData( primarySwatch: Colors.blueGrey ), debugShowCheckedModeBanner: false, home: new Home(), ); } } class Home extends StatefulWidget { @override State createState() { return new _Home(); }

}

class _Home extends State {

String valueChoose ; String valueChoose1 ; List listItem =[

"Km", "Hm","Dam","M", "Dm","Cm", "Mm"
];

TextEditingController valueController = new TextEditingController();


@override

Widget build(BuildContext context) { // TODO: implement build return Scaffold( appBar: AppBar( title: const Text('Convert App'), centerTitle: true, ), body: new Container( margin: EdgeInsets.all (10.0),

    child: new Column(
      children: <Widget>[
        new TextField(
          controller: valueController,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter number',

          ),
        ),

        new DropdownButton(
          hint: Text("select unity"),
          value: valueChoose,
          onChanged: (newValue){
            setState(() {
              valueChoose = newValue;
            });
          },
          items: listItem.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem),
            );
          }).toList(),
        ),
        new Text('Convert to'),

        new DropdownButton(
          hint: Text("select unity to convert"),
          value: valueChoose1,
          onChanged: (newValue){
            setState(() {
              valueChoose1 = newValue;
            });
          },
          items: listItem.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem),
            );
          }).toList(),
        ),

        new TextButton(
          style: flatButtonStyle,

          onPressed: () {

              convert(valueController.text, valueChoose, valueChoose1);


          },
          child: Text('Convert'),
        ),


      new  Center( child: Text('$w')),




      ],

    ),
  ),
);
}
