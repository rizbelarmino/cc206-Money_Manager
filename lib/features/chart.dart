import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Chart'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  for (int i = 1; i <= 7; i++)
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Day $i'),
                      ),
                    ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Weekly Expenses'),
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
                          child: Text('Expense Item $j'),
                        ),
                      ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Total Expense $j'),
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
