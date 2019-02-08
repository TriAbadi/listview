import 'package:flutter/material.dart';

void main (){

  runApp(new MaterialApp(title: 
  "Tray app",
  home: new Tray(),));
}

class Tray extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(leading: new Icon(Icons.home),
      title: new Text("List View"),
      actions: <Widget>[
        new Icon(Icons.search)
      ],),

     body: new ListView(
       children: <Widget>[
         new ListTutor(gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",judul:"HTML",desk: "piierwyegriwyeriwgery",),
         new ListTutor(gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",judul:"HTML",desk: "piierwyegriwyeriwgery"),
         new ListTutor(gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",judul:"HTML",desk: "piierwyegriwyeriwgery"),
         new ListTutor(gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",judul:"HTML",desk: "piierwyegriwyeriwgery"),

       ],
     ),
    );
  }
}

class ListTutor extends StatelessWidget {
ListTutor({this.gambar,this.judul,this.desk});
final String gambar;
final String judul;
final String desk;

  @override
  Widget build(BuildContext context) {
    return new Container(
           padding: EdgeInsets.all(20.0),
           child: new Center(
             child: new Row(
               children: <Widget>[
                 new Image(image: NetworkImage(gambar),width: 80.0,),
                 new Container(
                   padding: EdgeInsets.all(20.0),
                   child : new Center(
                 child : new Column(
                  children: <Widget>[
                    new Text(judul, style: new TextStyle(fontSize: 20.0),),
                    new Text(desk, style: new TextStyle(fontSize: 10.0),)
                  ],
                )))
               ],
             ),
           ),
    );
  }
}