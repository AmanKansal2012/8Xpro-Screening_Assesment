import 'package:eight_x_pro/Screens/Login.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.5, 0.7],
                  colors: [Colors.white, Colors.blue])

          ),
          alignment: Alignment.center,
          child: Stack(

            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/logo.PNG",
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
          Container(
            child: Text("Welcome to 8Xpro",style: TextStyle(fontSize: 38,shadows: [ Shadow( // bottomLeft
                offset: Offset(-1.5, -1.5),
                color: Colors.black
            ),
              Shadow( // bottomRight
                  offset: Offset(1.5, -1.5),
                  color: Colors.black
              ),
              Shadow( // topRight
                  offset: Offset(1.5, 1.5),
                  color: Colors.black
              ),
              Shadow( // topLeft
                  offset: Offset(-1.5, 1.5),
                  color: Colors.black
              ),]),),),
                    SizedBox(
                      height: 170,
                    ),
                    SizedBox(
                      height: 60,
                      width: 250,

                      child: RaisedButton(
                        color: Colors.white,
                        child: Text("Login to 8Xpro",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        onPressed: ()=>navigate(),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),),
                      ),),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  width: 250,

                  child: RaisedButton(
                    color: Colors.white,
                    child: Text("Open a new account",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    onPressed: ()=>newAccount(context),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),),

                  ),),

            ],
                ),

              ),

            ],
          ),
        ),
      ),
    );

  }
  newAccount(mContext){
    return showDialog(context: mContext,
        builder: (context){
          Future.delayed(Duration(seconds: 5), () {
            Navigator.of(context).pop(true);
          });
          return SimpleDialog(
            title: Text("This will redirect to create account page.",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
            children: <Widget>[

              SimpleDialogOption(
                child: Text("Cancel",style: TextStyle(color: Colors.black,fontSize: 20),),
                onPressed:()=>Navigator.pop(context),
              )
            ],
          );
        });
  }
  void navigate()
  {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ));
  }

}
