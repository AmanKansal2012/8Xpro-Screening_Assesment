import 'package:eight_x_pro/Screens/OTP.dart';
import 'package:flutter/material.dart';

class PhoneAuth extends StatefulWidget {
  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}
TextEditingController _phoneNumberController = TextEditingController();

class _PhoneAuthState extends State<PhoneAuth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
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
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Text(
                        "Enter Phone number for verification",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:18.0,right: 18),
                    child: Container(
                      child: Text(
                        "The number will be used for all app related notifications. You shall receive a SMS with code for verification",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 8, 18, 0),
                        child: TextFormField(

                          controller: _phoneNumberController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(

                            labelText: "Phone number",
                            labelStyle: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold
                            ),
                            prefixText: '+91   ',
                            hintStyle: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            ),
                            hintText: "9876543210"
                          ),


                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 130),
                  SizedBox(
                    width: 330,
                    height: 60,
                    child: RaisedButton(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.blue)),

                      onPressed: () {
                        navigate();
                      },

                    ),
                  ),


                ],
              ),
            ],

          ),
        ),
      ),
    );
  }
  void navigate()
  {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OTP(),
        ));
  }
}
