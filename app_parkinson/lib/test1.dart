import 'package:app_parkinson/model/drawing.dart';
import 'package:app_parkinson/service/ser.dart';

import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawing Test "),
      ),
      body: FutureBuilder<List<Drawing>>(
        future: PostsRepository().getVector(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data[index].coordinates),
                subtitle: Text(
                  snapshot.data[index].coordinates,
                ),
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}