import 'package:flutter/material.dart';
import './home.dart';
import './regis.dart';

class Login_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login_PageState();
  }
}

class Login_PageState extends State<StatefulWidget> {
  final userid = TextEditingController();
  final password = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        key: _scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Center(
              child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 15),
                child: Image.asset(
                  'img/2.jpg',
                  height: 170,
                ),
              ),
              TextFormField(
                style: TextStyle(fontSize: 18, color: Colors.grey),
                controller: userid,
                decoration: InputDecoration(
                    hintText: 'User ID',
                    prefixIcon: Icon(
                      Icons.person,
                      size: 30,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 30,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RaisedButton(
                  child: Text('LOGIN'),
                  onPressed: () {
                    if (userid.text.isEmpty || password.text.isEmpty) {
                      final snackBar = SnackBar(
                        content: Text('กรุณาระบุ user or password'),
                      );
                      _scaffoldKey.currentState.showSnackBar(snackBar);
                    } else if (userid.text == 'admin' &&
                        password.text == 'admin') {
                      final snackBar = SnackBar(
                        content: Text('user or password ไม่ถูกต้อง'),
                      );
                      _scaffoldKey.currentState.showSnackBar(snackBar);
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home_Page()));
                    }
                  },
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: ButtonTheme(
                      padding: new EdgeInsets.all(0.0),
                      child: FlatButton(
                        child: Text('Register New Account'),
                        textColor: Theme.of(context).primaryColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Regis_Page()));
                        },
                      ))),
            ],
          )),
        ));
  }
}
