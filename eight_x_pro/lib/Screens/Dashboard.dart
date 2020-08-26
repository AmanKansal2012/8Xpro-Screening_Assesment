
import 'package:eight_x_pro/Screens/Page1.dart';
import 'package:eight_x_pro/Screens/Page2.dart';
import 'package:eight_x_pro/Screens/Page3.dart';
import 'package:eight_x_pro/Screens/Page4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController pageController;
  int getPageIndex=0;
  final _scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController(initialPage: 0);
  }
  void dispose(){
    pageController.dispose();
    super.dispose();
  }
  onTapChangePage(int pageIndex){
    pageController.animateToPage(pageIndex, duration: Duration(milliseconds: 1), curve: Curves.easeIn);
  }
  whenPageChanges(int pageIndex){
    setState(() {
      this.getPageIndex=pageIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          key: _scaffoldKey,
          body: PageView(
            children: <Widget>[
              Page1(),
              Page2(),
              Page3(),
              Page4()
            ],
            controller: pageController,
            onPageChanged: whenPageChanges,
            physics: NeverScrollableScrollPhysics(),
          ),
          bottomNavigationBar: CupertinoTabBar(
            currentIndex: getPageIndex,
            onTap: onTapChangePage,
            backgroundColor:Colors.white12,
            activeColor: Colors.white30,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.add_circle,color: Colors.lightBlueAccent,size: 45,),activeIcon: Icon(Icons.add_circle,color: Colors.blue,size: 45,)),
              BottomNavigationBarItem(icon: Icon(Icons.check_box,color: Colors.lightBlueAccent,size: 45,),activeIcon: Icon(Icons.check_box,color: Colors.blue,size: 45,)),
              BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye,color: Colors.lightBlueAccent,size: 45,),activeIcon: Icon(Icons.remove_red_eye,color: Colors.blue,size: 45,)),
              BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.lightBlueAccent,size: 45,),activeIcon: Icon(Icons.settings,color: Colors.blue,size: 45,)),
            ],
          ),
        )
    );
  }
}
