import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:DefaultTabController(
        length: 3,
        child: SizedBox(
          height: 100.0,
          child: Column(
            children: <Widget>[
              TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "Action",
                  ),
                  Tab(
                    text: "Information",
                  ),
                  Tab(
                    text: "Decision",
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.yellow,
                    ),
                    Container(
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
