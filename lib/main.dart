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
          resizeToAvoidBottomInset: false,
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
    return (Column(
      children: <Widget>[
        header(),
        listWidget(context)
      ],
    ));
  }


  Widget header(){
    return ( Stack(
      children: <Widget>[
        Container(
          height: 100.0,
          child:Image.network("https://www.visitmexico.com/viajemospormexico/assets/uploads/destinos/zacatecas_destinos-principales_zacatecas_01.jpg",
            fit: BoxFit.cover,
            width: 850
            ,
          )


        ),
        Container(
          height: 100.0,
          width: 850,
          color: Colors.black26,
        ),
        Positioned(
          child: Text("Zacatecas",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          left: 16.0,
          top: 16.0,
        ),
        Positioned(
          right: 8.0,
          bottom: 8.0,
          child: Text("10C",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )),

        )
      ],
    ));
  }

  Widget listWidget(BuildContext context){
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            dayWidget("Lunes", Icons.wb_sunny,"32C", context),
            dayWidget("Martes", Icons.wb_sunny,"30C", context),
            dayWidget("Miercoles", Icons.wb_cloudy,"16C", context),
            dayWidget("Jueves", Icons.grain,"10C", context),
            dayWidget("Viernes", Icons.wb_sunny,"32C", context),

          ],
        )
    );
  }
  Widget dayWidget(String day, IconData icono, String temp,BuildContext context){
    return Card(

      child: Padding(

        padding: EdgeInsets.all(8.0),
        child: Row(

          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          children: <Widget>[

          Text(day),
          Icon(icono),
          Text(temp),
          FlatButton(
            child: Text("Detalle"),
            color: Colors.black,
            onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Detalle(day)
                ));
            },
          )

        ],
      )
      ),
    );
  }
}


class Detalle extends StatelessWidget{

  final String day;

  Detalle(this.day);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalles"
        ),


      ),
      body: Text(day),
    );
  }
}


