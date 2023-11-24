import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Chart',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        centerTitle: true, // Center the title
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder.all(color: Colors.transparent),
            children: [
              TableRow(
                children: [
                  for (int i = 1; i <= 7; i++)
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.grey[300]!, Colors.white],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'Day $i',
                          style:
                              TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
                        ),
                      ),
                    ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.grey[300]!, Colors.white],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        'Weekly Expenses',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              for (int j = 1; j < 6; j++)
                TableRow(
                  children: [
                    for (int i = 1; i <= 7; i++)
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.white, Colors.grey[200]!],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            'Expense Item $j',
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 14.0),
                          ),
                        ),
                      ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white, Colors.grey[200]!],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'Total Expense $j',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
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
