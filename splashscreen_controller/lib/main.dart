import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner:false,
    home:new MyApp(),
  ));
  
}
class  MyApp  extends StatefulWidget {
  @override
  _MyApp  createState() => _MyApp ();
}

class _MyApp  extends State<MyApp > {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      
      seconds: 5,
      backgroundColor: Colors.white,
      title: Text('Crazy Cook',style:TextStyle(
        color: Colors.white,fontWeight:FontWeight.bold,fontSize: 20)),
      image: Image.asset('asset/food2.gif'),
      loaderColor: Colors.brown,
     
      photoSize: 100.0,
      
      
      navigateAfterSeconds: Firsrroute(),
    );
  }
}
class Firsrroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first'),
      ),
      body: Center(
      
        child:RaisedButton(
            child:Text('second'),onPressed: (){
Navigator.push(
  context,MaterialPageRoute(builder: (context)=>SecondRoute(),)
);
        },)
      ),
    );
  }
}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(
              context
            );
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}