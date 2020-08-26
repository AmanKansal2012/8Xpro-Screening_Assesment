import 'package:eight_x_pro/Screens/Group.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Add Task",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

        ),
      ),

      body: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 150,
              child: Center(
                child: Card(
                  color: Colors.white,

                  child: GestureDetector(
                    onTap:()=>  navigate(),
                    child: ListTile(
                      leading: CircleAvatar(backgroundColor: Colors.black,radius:30,backgroundImage: NetworkImage("https://www.theconfidentteacher.com/wp-content/uploads/2016/01/cell_groups_810848078-1024x816.jpg"),),
                      title: Text("Group",style: TextStyle(
                        color: Colors.black,fontSize: 23.0,fontWeight: FontWeight.bold,
                      ),),
                      subtitle: Text("Make a group",style: TextStyle(
                        color: Colors.black,fontSize: 18.0,
                      ),),
                      trailing: Icon(Icons.arrow_forward,color: Colors.black,size: 26,),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 80,
              child: Card(
                color: Colors.white,
                child: GestureDetector(
                  onTap:()=>  self(context),
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.black,radius:30,backgroundImage: NetworkImage("https://miro.medium.com/max/1250/1*vWGq3k3urdLtNXPKT2gapg.png"),),
                    title: Text("Self",style: TextStyle(
                      color: Colors.black,fontSize: 23.0,fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Text("Be a lone wolf",style: TextStyle(
                      color: Colors.black,fontSize: 18.0,
                    ),),
                    trailing: Icon(Icons.arrow_forward,color: Colors.black,size: 26,),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );

  }
  self(mContext){
    return showDialog(context: mContext,
        builder: (context){
          Future.delayed(Duration(seconds: 5), () {
            Navigator.of(context).pop(true);
          });
          return SimpleDialog(
            title: Text("This will redirect to create self profile page.",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
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
          builder: (context) => Group(),
        ));
  }
}
