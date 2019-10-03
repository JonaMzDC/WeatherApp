import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.cloud_done),
                SizedBox(width: 8.0,),
                Text("App clima")
              ],
            ),
            centerTitle: true,

          ),
          body: HomePage(),
        ),

      ),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          dayWidget("Lunes", Icons.wb_sunny,"32C"),
          dayWidget("Martes", Icons.wb_sunny,"30C"),
          dayWidget("Miercoles", Icons.wb_cloudy,"16C"),
          dayWidget("Jueves", Icons.grain,"10C"),
          dayWidget("Viernes", Icons.wb_sunny,"32C"),

        ],
      )
    );
  }

  Widget dayWidget(String day, IconData icono, String temp){
    return Card(
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          children: <Widget>[
          Text(day),
          Icon(icono),
          Text(temp)
        ],
      )
      ),
    );
  }
}



