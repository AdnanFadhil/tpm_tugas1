import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tpm/pages/menu.dart';

TextEditingController getUser = new TextEditingController();
TextEditingController getPass = new TextEditingController();
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _MyAppState();
}

class _MyAppState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            title: const Text('Menu Login')
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        controller: getUser,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Masukkan email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Tolong ketik email' : null;
                        },
                      ),
                    ),

                    const SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        controller: getPass,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Masukkan password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Tolong ketik password' : null;
                        },
                      ),
                    ),

                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: MaterialButton(
                          child:
                          const Text('Login'),
                          color:
                          Colors.teal,
                          textColor:
                          Colors.white,
                        minWidth: double.infinity,
                        onPressed: () {
                          String user = 'rain@gmail.com';
                          String pass = '123';
                          if (getUser.text.isEmpty) {
                            const errorUser = SnackBar(
                              content: Text('Username tidak boleh kosong!'),
                              duration: Duration(seconds: 2),);
                            _scaffoldKey.currentState!.showSnackBar(errorUser);
                          } else if (getPass.text.isEmpty) {
                            const errorUser = SnackBar(content: Text('Password tidak boleh kosong!'),duration: Duration(seconds: 2),);
                            _scaffoldKey.currentState!.showSnackBar(errorUser);
                          } else if (getUser.text == user && getPass.text == pass) {
                            final errorUser = SnackBar(content: Text('Selamat datang user: ' + getUser.text),duration: const Duration(seconds: 2),);
                            _scaffoldKey.currentState!.showSnackBar(errorUser);
                            Timer(const Duration(seconds: 2), (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const MenuPage()));
                            });
                          } else {
                            const errorUser = SnackBar(content: Text('Cek kembali input anda!'),duration: Duration(seconds: 2),);
                            _scaffoldKey.currentState!.showSnackBar(errorUser);
                          }
                        }
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

