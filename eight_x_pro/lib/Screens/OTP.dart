import 'dart:async';

import 'package:eight_x_pro/Screens/Dashboard.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  Timer _timer;
  int _start = 59;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: (){
          startTimer();
        },
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
                      padding: const EdgeInsets.all(32.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Please Wait.\nWe will auto verify the OTP sent to +91 9876543210 ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 8, 32, 0),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              // prefixText: '',
                              hintStyle: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Auto verifying your OTP in (00:$_start)",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 90),
                    SizedBox(
                      width: 330,
                      height: 60,
                      child: RaisedButton(
                        child: Text(
                          "Verify",
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
      ),
    );
  }
  void navigate()
  {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));
  }
}
