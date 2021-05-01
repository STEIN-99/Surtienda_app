import 'package:appsurtienda/vehiculos/listaVehiculos.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DetailVeh extends StatefulWidget {
  List list;
  int index;
  DetailVeh({this.index, this.list});
  @override
  _DetailVehState createState() => new _DetailVehState();
}

class _DetailVehState extends State<DetailVeh> {
  void deleteData() {
    var url =
        "http://10.0.2.2/Proyectos/Suritendapp/Movil/vehiculos/deleteData.php";
    http.post(url,
        body: {'ID_MATRICULA': widget.list[widget.index]['ID_MATRICULA']});
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
          "Esta seguto de eliminar '${widget.list[widget.index]['MODELO']}'"),
      actions: <Widget>[
        new RaisedButton(
          child: new Text(
            "OK Eliminado!",
            style: new TextStyle(color: Colors.black),
          ),
          color: Colors.red,
          onPressed: () {
            deleteData();
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new Vehiculos(),
            ));
          },
        ),
        new RaisedButton(
          child:
              new Text("CANCELAR", style: new TextStyle(color: Colors.black)),
          color: Colors.green,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.list[widget.index]['MODELO']}"),
        backgroundColor: Colors.blue[900],
      ),
      body: new Container(
        height: 340.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  widget.list[widget.index]['MODELO'],
                  style: new TextStyle(fontSize: 20.0),
                ),
                Divider(),
                new Text(
                  "Chofer : ${widget.list[widget.index]['NOMBRE']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  "Matricula : ${widget.list[widget.index]['MATRICULA']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  "Motor : ${widget.list[widget.index]['MOTOR']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  "Capacidad : ${widget.list[widget.index]['CAPAC']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),

                /*   new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                    child: new Text("EDITAR"),                  
                    color: Colors.blueAccent,
                    shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: (){},/*=>Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (BuildContext context)=>new EditData(list: widget.list, index: widget.index,),
                        )
                      ), */                   
                  ),
                  VerticalDivider(),
                  new RaisedButton(
                    child: new Text("ELIMINAR"),                  
                    color: Colors.redAccent,
                    shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: ()=>confirm(),                
                  ),
                  ],
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
