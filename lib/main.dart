import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/leul.jpg'),
                ),
                Text(
                  'Leul Abera',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(
                    fontFamily: 'SourceSans3',
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade100,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(

                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+255943366036',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourceSans3-Regular',
                        color: Colors.teal.shade900,
                      ),
                    ),
                    onTap: () {
                      launch('tel:+255943366036');
                    },
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'Leul0593@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourceSans3-Regular',
                        color: Colors.teal.shade900,
                      ),
                    ),
                    onTap: () {
                      launch('mailto:Leul0593@gmail.com');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
