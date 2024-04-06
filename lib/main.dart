import 'package:flutter/material.dart';

//-----GLOBAL VARIABLES-----
final Color mainColor = Color.fromARGB(255, 1, 57, 211);


//-----MAIN METHOD-----
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: SplashPage()
    )
  );
}

//-----PAGES-----
// splash page
class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MountsApp()));
    });

    return Container(
      color: mainColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            
            child: Icon(Icons.price_change_outlined, color: Colors.white, size: 90),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 80),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
              )
            )
          )
        ],
      )
    );
  }
}

// landing page
class MountsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome to Mounts of the World!')
      )
    );
  }
}
