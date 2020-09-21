import 'package:flutter/material.dart';
class SearchPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            decoration: InputDecoration(
              hintText: "Patient's Name",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search)
            ),
          ),
          RaisedButton(onPressed: (){},
          child: Text("SEARCH"),)
        ],
      ),
    );
  }
}
