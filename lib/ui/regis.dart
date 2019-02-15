import 'package:flutter/material.dart';
import './login.dart';

class Regis_Page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Regis_PageState();
  }

}

class Regis_PageState extends State<StatefulWidget>{
  final email = TextEditingController();
  final password = TextEditingController();
  final repassword = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Register'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: ListView(
              children: <Widget>[
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'Email', prefixIcon: Icon(Icons.mail_outline, size: 20,color: Colors.blue,),
                    hintStyle: TextStyle(
                      color: Colors.blue
                    )
                  ),
                ),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password', prefixIcon: Icon(Icons.lock, size: 20,color: Colors.blue,),
                    hintStyle: TextStyle(
                      color: Colors.blue
                    )
                  ),
                ),
                TextFormField(
                  controller: repassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Repassword', prefixIcon: Icon(Icons.lock, size: 20,color: Colors.blue,),
                    hintStyle: TextStyle(
                      color: Colors.blue
                    )
                  ),
                ),
                RaisedButton(
                  child: Text('CONTINUE'),
                  color: Colors.blue,
                  onPressed: (){
                    if(email.text.isEmpty || password.text.isEmpty || repassword.text.isEmpty){
                      final snackBar = SnackBar(
                          content: Text('กรุณาระบุข้อมูลให้ครบถ้วน'),
                        );
                        _scaffoldKey.currentState.showSnackBar(snackBar);
                    }else if(email.text == 'admin'){
                      final snackBar = SnackBar(
                          content: Text('user นี้มีอยู่ในระบบแล้ว'),
                        );
                        _scaffoldKey.currentState.showSnackBar(snackBar);
                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Page()));
                    }
                  },
                )
              ],
            ),
          ),
        ),
    );
  }

}