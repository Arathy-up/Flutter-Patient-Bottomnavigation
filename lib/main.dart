import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationeg/AddPatient.dart';
import 'package:flutter_bottomnavigationeg/SearchPatient.dart';
import 'package:flutter_bottomnavigationeg/ViewPatient.dart';

void main()=>runApp(PatientApp());
class PatientApp extends StatefulWidget {
  @override
  _PatientAppState createState() => _PatientAppState();
}

class _PatientAppState extends State<PatientApp> {
  var pages=[AddPatient(),ViewPatient(),SearchPatient()];
  int _myindex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("PATIENT APP"),
        ),
        body: pages[_myindex] ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _myindex,
          iconSize: 10.0,
          onTap: (index){
            setState(() {
              _myindex=index;
            });

          },
          backgroundColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
              title: Text("Add Patient")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.view_list),
              title: Text("View Patient")),
              BottomNavigationBarItem(
                  icon:Icon(Icons.search),
              title: Text("Search"))
            ]),
      ),
    );
  }
}
