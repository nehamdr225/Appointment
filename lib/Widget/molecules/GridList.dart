import 'package:appointment/Widget/molecules/GridLook.dart';
import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  GridList({
    this.listViews,
    this.crossAxisCount,
  });
  final listViews;
  final crossAxisCount;
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
        primary: false,
        //physics: new NeverScrollableScrollPhysics(),
        itemCount: listViews.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Theme.of(context).colorScheme.onSurface,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GridLook(
                name: listViews[index]['name'],
                caption: listViews[index]['cap'],
                src: listViews[index]['src'],
                onTap: () {
                  // Navigator.of(context).push(
                  //       MaterialPageRoute(
                  //         builder: (context) => CategoryPage(
                  //             text: listViews[index]['name'], type: type),
                  //       ),
                },
              ),
            
          );
        },
      
    );
  }
}
