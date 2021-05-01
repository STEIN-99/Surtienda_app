import 'package:appsurtienda/vehiculos/detailVehiculo.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Vehiculos extends StatefulWidget {
  @override
  _VehiculosState createState() => new _VehiculosState();
}

class _VehiculosState extends State<Vehiculos> {
  Future<List> getData() async {
    final response = await http.get(
        "http://10.0.2.2/Proyectos/Suritendapp/Movil/vehiculos/getdata.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Listado vehiculos"),
        backgroundColor: Colors.blue[900],
      ),
      /* floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
      onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new AddData(),
            )),
      ),*/
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new ItemList(
                  list: snapshot.data,
                )
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
                  builder: (BuildContext context) => new DetailVeh(
                        list: list,
                        index: i,
                      )),
            ),
            child: new Card(
              child: new ListTile(
                title: new Text(
                  list[i]['MODELO'],
                  style: TextStyle(fontSize: 25.0, color: Colors.orangeAccent),
                ),
                leading: new Icon(
                  Icons.local_shipping,
                  size: 77.0,
                  color: Colors.orangeAccent,
                ),
                subtitle: new Text(
                  "Matricula : ${list[i]['MATRICULA']}",
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
