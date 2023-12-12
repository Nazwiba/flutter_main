import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Months(),
  ));
}

class Months extends StatelessWidget {
  var name = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (context,index)=> Card(
          child:Text(name[index]),
          
        ), 
        separatorBuilder: (context,index){
          if(index % 4 == 0){
          return const Card(
              color: Colors.red,
              child: Text("Advertisement",style: TextStyle(color: Colors.white),),
              
            
          );
        }else{
          return const SizedBox();
        }
        },
        itemCount: 12),

      );
    
  }
}
