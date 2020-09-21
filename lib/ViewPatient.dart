import 'package:flutter/material.dart';
class ViewPatient extends StatelessWidget {
  var patient=["Radha Krishnan","BalaMurali","Jacob Thomas","Abu"];
  var diseases=["Diabetes","Allergies&Asthma","Liver disease","Cancer"];
  var contact=["9497864824","8281814824","8129467173","8606821263"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(
        itemCount: patient.length,
          itemBuilder: (context,index){
        return Card(
          elevation: 2.0,
          child: ListTile(
            title: Text("Patient Name:"+patient[index]),
            subtitle: Text("Disease:"+diseases[index]+"\n"+"Contact:"+contact[index]),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.delete),
          ),
        );

      })
    );
  }
}
