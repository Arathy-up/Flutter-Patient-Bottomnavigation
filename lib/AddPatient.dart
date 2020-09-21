import 'package:flutter/material.dart';
class AddPatient extends StatefulWidget {
  @override
  _AddPatientState createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();
  TextEditingController t4=TextEditingController();
  TextEditingController t5=TextEditingController();
  var name="0";
  var add="0";
  var mob="0";
  var sym="0";
  var dis="0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: t1,
            decoration: InputDecoration(
              hintText: "Enter Patient's Name",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
              )
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            controller: t2,
            decoration: InputDecoration(
              hintText: "Address",
              prefixIcon: Icon(Icons.home),
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
              )
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            controller: t3,
            decoration: InputDecoration(
                hintText: "Mobile Number",
                prefixIcon: Icon(Icons.phone),
                border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                )
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            controller: t4,
            decoration: InputDecoration(
                hintText: "Symptoms",
                prefixIcon: Icon(Icons.local_hospital),
                border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                )
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            controller: t5,
            decoration: InputDecoration(
                hintText: "Disease",
                prefixIcon: Icon(Icons.local_hospital),
                border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                )
            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            setState(() {
              name=t1.text;
              add=t2.text;
              mob=t3.text;
              sym=t4.text;
              dis=t5.text;

            });


          },
          child: Text("Submit"),),
          Center(child: Text("Patient's Name:"+name)),
          Center(child: Text("Address:"+add)),
          Center(child: Text("Mobile No:"+mob)),
          Center(child: Text("List of Symptoms:"+sym)),
          Center(child: Text("Disease:"+dis)),
        ],
      ),
    );
  }
}
