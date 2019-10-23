import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
      "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
      "Purus viverra accumsan in nisl nisi scelerisque eu ultrices. Vehicula ipsum a arcu cursus vitae. "
      "Risus at ultrices mi tempus imperdiet nulla malesuada. Varius quam quisque id diam vel quam elementum pulvinar. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum. "
      "Habitant morbi tristique senectus et. Nibh sit amet commodo nulla facilisi nullam. Auctor augue mauris augue neque. Non quam lacus suspendisse faucibus interdum posuere lorem. Donec massa sapien faucibus et. Dignissim cras tincidunt lobortis feugiat vivamus at. "
      "Id semper risus in hendrerit gravida rutrum quisque non tellus. Erat imperdiet sed euismod nisi porta lorem mollis aliquam ut. "
      "Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Enim sed faucibus turpis in eu mi bibendum neque. "
      "In pellentesque massa placerat duis. Dignissim sodales ut eu sem.";
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Kemerdekaan",textAlign: TextAlign.center,),
        backgroundColor: Colors.red,
      ),

      body: new ListView(
        children: <Widget>[
            Image.network("https://www.islampos.com/wp-content/uploads/2018/08/proklamasi-kemerdekaan-RI.jpg",fit: BoxFit.cover,),
            Padding(padding: EdgeInsets.all(12.0)),
            Text("Kemerdekaan Indonesia",style: TextStyle(fontSize: 30.0,color: Colors.black87),textAlign: TextAlign.center, ),
            Padding(padding: EdgeInsets.all(13.0)),
            new Row(
              children: <Widget>[
                IconTemplate(iconData: Icons.location_on,textIcon: "Location",),
                IconTemplate(iconData: Icons.photo,textIcon: "Photos",),
                IconTemplate(iconData: Icons.brightness_high,textIcon: "Weather",)
              ],
            ),
            new Container(
              padding: EdgeInsets.all(16.0),
              child: Text(""+text,style: TextStyle(fontSize: 16.0),),
            )


        ],
      ),
    );
  }
}

class IconTemplate extends StatelessWidget {
  final IconData iconData;
  final String textIcon;

  IconTemplate({this.iconData,this.textIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          new Icon(iconData, size: 40.0,color: Colors.lightBlue,),
          new Padding(padding: EdgeInsets.all(3.0)),
          new Text(textIcon,style: TextStyle(fontSize: 14.0,color: Colors.lightBlue[600]),)
        ],
      ),
    );
  }
}
