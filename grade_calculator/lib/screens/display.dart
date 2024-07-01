import 'package:flutter/material.dart';
import 'package:grade_calculator/screens/data.dart';

class Results extends StatefulWidget {
  final Map<String, int> results;
  const Results({super.key, required this.results});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Results'),),
      ),

      body: Column(
        children: [
          Text(widget.results.toString()),
          Text((widget.results.values.reduce((sum, element)=> sum+element)).toString()),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Table(
              border: TableBorder.all(width: 1, color: Colors.white),
              
            
              children:  [
                const TableRow(
                  children: [
                    Text('Summary'),
                    Text('Figures')
                  ]
                ),
            
                TableRow(
                  children: [
                    const Text('Total'),
                    Text((widget.results.values.reduce((sum, element)=> sum+element)).toString()),
                  ]
                ),
            
            
                 TableRow(
                  children: [
                    const Text('Average'),
                    Text(((widget.results.values.reduce((sum, element) => sum+element)/widget.results.values.length).toStringAsFixed(3))),
                  ]
                ),
            
            
                 TableRow(
                  children: [
                    const Text('Grade'),
                    Text(determiner((widget.results.values.reduce((sum, element) => sum+element)/widget.results.values.length))),
                  ]
                )
              ],
            ),
          )
        ],),


    );
  }

  

}

