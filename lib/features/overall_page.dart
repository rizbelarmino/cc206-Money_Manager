import 'package:flutter/material.dart';

class OverallPage extends StatelessWidget{
  const OverallPage({super.key});

  @override
  Widget build(BuildContext context){
   
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
         
          title: Text('OVERALL EXPENSE',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          )),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
              
              child: Column(
                 
                children: [
                  Text('JANUARY:'),
                  Text('Monthly Expenses:'),
                  Text('Weekly Expenses:'),
                  Text('\Total:'),
                ],
              ),
              
            ),
              Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
              
              child: Column(
                children: [
                  Text('\FEBRUARY'),
                  Text('Monthly Expenses:'),
                  Text('Weekly Expenses:'),
                  Text('\Total:'),

                ],
              ),
              
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
              
              child: Column(
                children: [
                  Text('MARCH:'),
                  Text('Monthly Expenses:'),
                  Text('Weekly Expenses:'),
                  Text('\Total:'),
                ],
              ),
              
            ),
            Container(
              
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
              
              child: Column(
                children: [
                  Text('APRIL:'),
                  Text('Monthly Expenses:'),
                  Text('Weekly Expenses:'),
                  Text('\Total:'),
                ],
              ),
              
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
              
              child: Column(
                children: [
                  Text('MAY:'),
                  Text('Monthly Expenses:'),
                  Text('Weekly Expenses:'),
                  Text('\Total:'),
                ],
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}