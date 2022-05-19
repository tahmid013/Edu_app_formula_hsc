import 'package:flutter/material.dart';
import 'phy_1st.dart';
import 'math_1st.dart';
import 'chem_1st.dart';
import 'phy_2nd.dart';
import 'chem_2nd.dart';
import 'math_2nd.dart';
import 'bio_1st.dart';
import 'bio_2nd.dart';
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){

      }),
        title: Text("Home Page"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){

          }),
        ],
      ),
      body: Container(


        alignment: Alignment.center,
        transformAlignment: Alignment.center,


        child:ListView(
          children: <Widget>[

            Padding(padding:   const EdgeInsets.only(top: 20.0, bottom: 20.0)),
            new RaisedButton(
              padding:  const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15.0, right: 20),
              child: Text('Physics 1st Paper', style: TextStyle(color: Colors.white),),
              color: new Color(0xFF2c828f),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>phy_1st()));
              },
            ),
            Padding(padding:   const EdgeInsets.only(top: 20.0, bottom: 20.0)),
            new RaisedButton(
              padding:  const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15.0, right: 20),
              child: Text('Physics 2nd Paper', style: TextStyle(color: Colors.white),),
              color: new Color(0xff2c828f),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>phy_2nd()));
              },
            ),
            Padding(padding:   const EdgeInsets.only(top: 20.0, bottom: 20.0)),
            new RaisedButton(
              padding:  const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
              child: Text('Chemistry 1st Paper', style: TextStyle(color: Colors.white),),
              color: new Color(0xffaa2F74),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>chem_1st()));
              },
            ),
            Padding(padding:   const EdgeInsets.only(top: 20.0, bottom: 20.0)),
            new RaisedButton(
              padding:  const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Text('Chemistry 2nd Paper', style: TextStyle(color: Colors.white),),
              color: new Color(0xffaa2F74),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>chem_2nd()));
              },
            ),
            Padding(padding:   const EdgeInsets.only(top: 20.0, bottom: 20.0)),
            new RaisedButton(
              padding:  const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
              child: Text('Math 1st Paper', style: TextStyle(color: Colors.white),),
              color: new Color(0xff78aF44),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>math_1st()));
              },
            ),
            Padding(padding:   const EdgeInsets.only(top: 20.0, bottom: 20.0)),
            new RaisedButton(
              padding:  const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
              child: Text('Math 2nd Paper', style: TextStyle(color: Colors.white),),
              color: new Color(0xff78aF44),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>math_2nd()));
              },
            ),
            Padding(padding:   const EdgeInsets.only(top: 20.0, bottom: 20.0)),
            new RaisedButton(
              padding:  const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
              child: Text('Biology 1st Paper', style: TextStyle(color: Colors.white),),
              color: new Color(0xff622F74),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>bio_1st()));
              },
            ),
            Padding(padding:   const EdgeInsets.only(top: 20.0, bottom: 20.0)),
            new RaisedButton(
              padding:  const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
              child: Text('Biology 2nd Paper', style: TextStyle(color: Colors.white),),
              color: new Color(0xff622F74),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>bio_2nd()));
              },
            ),
          ],
          ),
        )

    );

  }
}
