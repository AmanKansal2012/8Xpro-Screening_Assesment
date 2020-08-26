import 'package:eight_x_pro/Screens/phnAuth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 1.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/logo.PNG",
                    ),
                  )
              ),
            ],
          ),
        ),
        body: Container(
          child: Column(


            children: <Widget>[
              SizedBox(
                height: 220,
              ),
              RaisedButton(
                onPressed: ()=>navigate(),
                color: Colors.white,


                child: Row(

                  children: <Widget>[
                    Icon(

                      Icons.phone_iphone,

                      color: Colors.blueAccent,
                      size: 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Use my Phone Number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
                child: Text(
                  "Or ,",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              RaisedButton(
                color: Colors.white,
                onPressed: ()=>gAccount(context),

                child: Row(

                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      color: Colors.green,
                      size: 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Use my Google account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  gAccount(mContext){
    return showDialog(context: mContext,
        builder: (context){
          Future.delayed(Duration(seconds: 5), () {
            Navigator.of(context).pop(true);
          });
          return SimpleDialog(
            title: Text("This will redirect to Sign In using google account page.",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
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
          builder: (context) => PhoneAuth(),
        ));
  }
}
