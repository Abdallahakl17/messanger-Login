// ignore_for_file: use_key_in_widget_constructors, unnecessary_import, unused_import, implementation_imports, avoid_print, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

var emailcontroller = TextEditingController();
var Passwordcontroller = TextEditingController();

class Logi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 40.0),
              TextField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                onSubmitted: (value) {
                  print(value);
                },
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  
                  labelText: 'email address',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15.0),
              TextField(
                controller: Passwordcontroller,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onSubmitted: (value) {
                  print(value);
                },
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  labelText: 'password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                color: Colors.blueAccent,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    print(emailcontroller.text);
                    print(Passwordcontroller.text);
                  },
                  child: Text(
                    'login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          
                  Text('don\'t have an account ? '),
                  TextButton(onPressed: (() {
                    
                  }
                  ), 
                  child: Text('register '),),
                ]
                  ,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
