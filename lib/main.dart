import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FlightBooking(),
  ));
}

class FlightBooking extends StatefulWidget{
  @override
  State<FlightBooking> createState() => _FlightBookingState();
}

class _FlightBookingState extends State<FlightBooking> {

  late bool formVisible;
  int? _formsIndex;

   @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
            fit: BoxFit.cover,
            ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.black54,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: kToolbarHeight + 40),
                  Expanded(
                    child: Column(
                    children: const <Widget>[
                      Text(
                        " Find And Book A Great \n Experience ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 35.0,
                        ),
                        //textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 25.0),
                      Text(
                        "Going forward after a pandemic that \ndevastated the airline industry.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.0,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),  
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const SizedBox(width: 250.0,height: 500,),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                        child: const Text("Get Tickets"),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formsIndex = 1;
                            
                           }
                          );
                        },
                      ),
                     // SizedBox(width: 500);
                    ),
                ],
              ),
            ]  
          ),
         ),
       ]
     )
    )
   );
  }
}
