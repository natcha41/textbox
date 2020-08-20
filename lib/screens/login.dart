import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final String title;

  const Login({Key key, this.title}) : super(key: key);

  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  String user;
  String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    user = value;
                  });
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  labelText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink[800]),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              width: 250,
              padding: EdgeInsets.all(16),
            ), // ขนานของเส้น //ใช้คุมข้อความ
            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    pass = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink[800]),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              width: 250,
              padding: EdgeInsets.all(16),
            ),
            RaisedButton(
              onPressed: () {
                validateTextField(context);
              },
              child: Text('Submit'),
              color: Colors.blue[900],
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void validateTextField(BuildContext context) {
    print(user);
    print(pass);
  }
}
