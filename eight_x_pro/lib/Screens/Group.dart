import 'package:flutter/material.dart';
import 'package:contact_picker/contact_picker.dart';

class Group extends StatefulWidget {
  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group> {
  final ContactPicker _contactPicker = new ContactPicker();
  Contact _contact;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Create a Group"),

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
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 8, 18, 0),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(

                              labelText: "Group Name",
                              labelStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                fontSize: 30
                              ),

                              hintStyle: TextStyle(
                                  color: Colors.black,
                              ),
                              hintText: "Marketing 101 Project"
                          ),


                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    color: Colors.white,
                    onPressed: () async {
                      Contact contact = await _contactPicker.selectContact();
                      setState(() {
                        _contact = contact;
                      });
                    },


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Add Group Members",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                          Icon(
                            Icons.group_add,
                            color: Colors.blue,
                            size: 48,
                          ),

                        ],
                      ),
                    ),
                  ),
             Card(
                    color: Colors.white,

                    child: ListTile(
                      leading: Icon(Icons.contacts),
                      title: Text(_contact==null?"No contacts selected.":_contact.toString(),style: TextStyle(
                        color: Colors.black,fontSize: 23.0,fontWeight: FontWeight.bold,
                      ),),

                    ),
                  ),

                  SizedBox(height: 90),
                  SizedBox(
                    width: 330,
                    height: 60,
                    child: RaisedButton(
                      child: Text(
                        "Create Group",
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
//                        navigate();
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
}
