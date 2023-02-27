import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _MyAppState();
}

class _MyAppState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Login Screen')
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Please enter your email' : null;
                        },
                      ),
                    ),

                    const SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Please enter your password' : null;
                        },
                      ),
                    ),

                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: const Text('Login'),
                        color: Colors.teal,
                        textColor: Colors.white,
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