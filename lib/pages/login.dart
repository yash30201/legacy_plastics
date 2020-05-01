import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String pass ='';

  void fetchData() async{

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Log In',
          style: TextStyle(
            letterSpacing: 1,
            fontSize: 24.0,
          ),
        ),
      ),

      body: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email =value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Email Id',
                    icon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  onChanged: (value){
                    pass = value;
                  } ,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    icon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 30,),
                RaisedButton(
                  onPressed: fetchData,
                  child: Text(
                      'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
          //The bottom login part
          Expanded(
            child: Container(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Don\'t have an account yet ?'),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, '/auth');
                          },
                          child: Text('Register'),
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
