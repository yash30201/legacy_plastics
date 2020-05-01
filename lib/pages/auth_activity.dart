import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  String email = '';
  String temp1 = '';
  String temp2 = '';
  String pass ='';
  String number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
            'Registration',
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
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value){
                    number = value;
                  } ,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    icon: Icon(Icons.phone),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  onChanged: (value){
                    temp1 = value;
                  } ,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.lock_outline),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  onChanged: (value){
                    temp2 = value;
                    if(temp1 == temp2){
                      pass =temp1;
                    }
                    else{

                    }
                  } ,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    icon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 22.0),
                        child: RaisedButton(
                          onPressed: (){},
                          child: Text('Register'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 25.0),
                        child: RaisedButton(
                          onPressed: (){},
                          child: Text('Register with google'),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Already have an account ?'),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        child: Text('Login'),
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
