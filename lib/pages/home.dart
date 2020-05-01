import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('cannot launch');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex :1,
              child: Container(
                child: Align(
                  alignment:Alignment.center,
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                  ),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 5.0),
                        child: Card(
                          shape: BeveledRectangleBorder(
                            side: BorderSide(
                              color: Colors.lightBlue
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular((15)), bottomRight: Radius.circular(15)),
                          ),
                          child: ListTile(
                            leading: Icon(Icons.chevron_right),
                            title: Text('Browse for Ideas'),
                            subtitle: Text('Search for your perfect kind of momento idea.'),
                            onTap: (){
                              Navigator.pushNamed(context, '/ideas');
                            },
                            onLongPress: (){},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 5.0),
                        child: Card(
                          shape: BeveledRectangleBorder(
                            side: BorderSide(
                                color: Colors.lightBlue
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular((15)), bottomRight: Radius.circular(15)),
                          ),
                          child: ListTile(
                            leading: Icon(Icons.chevron_right),
                            title: Text('Submit an Idea'),
                            subtitle: Text('Submit for your perfect kind of momento idea'),
                            onTap: _launchURL,
                            onLongPress: (){},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 5.0),
                        child: Card(
                          shape: BeveledRectangleBorder(
                            side: BorderSide(
                                color: Colors.lightBlue
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular((15)), bottomRight: Radius.circular(15)),
                          ),
                          child: ListTile(
                            leading: Icon(Icons.chevron_right),
                            title: Text('Tell a Story'),
                            subtitle: Text('Tell us the Story and we will find the perfect match for you'),
                            onTap: (){},
                            onLongPress: (){},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 5.0),
                        child: Card(
                          shape: BeveledRectangleBorder(
                            side: BorderSide(
                                color: Colors.lightBlue
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular((15)), bottomRight: Radius.circular(15)),
                          ),
                          child: ListTile(
                            leading: Icon(Icons.chevron_right),
                            title: Text('Track & History'),
                            subtitle: Text('Track your product or see through your history'),
                            onTap: (){},
                            onLongPress: (){},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
