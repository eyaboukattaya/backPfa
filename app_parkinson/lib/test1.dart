import 'model/pedometer.dart';
import 'service/ser.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedometer Test "),
      ),
      body: FutureBuilder<List<Pedometer>>(
        future: PostsRepository().getSteps(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data[index].numberPas),
                subtitle: Text(
                  snapshot.data[index].numberPas,
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