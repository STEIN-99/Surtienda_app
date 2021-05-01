import 'package:appsurtienda/Clientes/listaClientes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Detailiti extends StatefulWidget {
  List list;
  int index;
  Detailiti({this.index, this.list});
  @override
  _DetailitiState createState() => new _DetailitiState();
}

class _DetailitiState extends State<Detailiti> {
  void deleteData() {
    var url =
        "http://10.0.2.2/Proyectos/Suritendapp/Movil/sucursales/deleteData.php";
    http.post(url, body: {'ID_FECHA': widget.list[widget.index]['ID_FECHA']});
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
          "Esta seguto de eliminar '${widget.list[widget.index]['NOMBRE']}'"),
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
              builder: (BuildContext context) => new Clientes(),
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
        title: new Text("${widget.list[widget.index]['RUTAS']}"),
        backgroundColor: Colors.blue[900],
      ),
      body: new Container(
        height: 400.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  widget.list[widget.index]['RUTAS'],
                  style: new TextStyle(fontSize: 20.0),
                ),
                Divider(),
                Divider(),
                new Text(
                  "Vendedor : ${widget.list[widget.index]['NOMBRE']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  "Vehiculo : ${widget.list[widget.index]['MODELO']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  "Fecha : ${widget.list[widget.index]['FECHA']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  "Hora de salida : ${widget.list[widget.index]['HORA_SALI']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  "Hora aproximada de llegada : ${widget.list[widget.index]['HORA_LLEG']}",
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
                    onPressed: (){}/*=>Navigator.of(context).push(
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
