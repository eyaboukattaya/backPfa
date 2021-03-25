import 'package:flutter/material.dart';
import 'service/ser.dart';
import 'model/patient.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: FutureBuilder<List<Patients>>(
        future: PostsRepository().getPatients(),
          builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data[index].userName),
                subtitle: Text(
                  snapshot.data[index].userName,
               
                ),
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
          
         },
          ),


     

     floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => AddNewEmployeePage(),
            
            
            
            
            
            
            
            
            ),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddNewEmployeePage extends StatefulWidget {
  AddNewEmployeePage({Key key}) : super(key: key);

  _AddNewEmployeePageState createState() => _AddNewEmployeePageState();
}

class _AddNewEmployeePageState extends State<AddNewEmployeePage> {
 final TextEditingController _controller = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  Future<Patients> _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create user '),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(hintText: 'Enter name'),
                    ),
                      TextField(
                      controller: _controllerPassword ,
                      decoration: InputDecoration(hintText: 'Enter your password'),
                    ),
                    ElevatedButton(
                      child: Text('Create Data'),
                      onPressed: () {
                        setState(() {
                          _futureAlbum =PostsRepository().createPatients(_controller.text,_controllerPassword.text);
                        });
                      },
                    ),
                  ],
                )
              : FutureBuilder<Patients>(
                  future: _futureAlbum,
                  builder: (context, snapshot) {

                    if (snapshot.hasData) {


                      return Text(snapshot.data.userName );
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }

                    return CircularProgressIndicator();
                  },
                ),
        ),
      ),
    );
  }
}