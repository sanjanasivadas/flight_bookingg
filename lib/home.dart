import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Flighthome(),
  ));
} 

class Flighthome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   body: SingleChildScrollView(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: const[
            Expanded(
              child: SizedBox(height: 90,
              child: Card(
                  
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  NetworkImage:
                ),
              ))
          ],
        )
      ],
    ),
   ),
      
    ),
   );
  }

}