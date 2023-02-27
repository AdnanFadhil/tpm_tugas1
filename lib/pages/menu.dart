import 'package:flutter/material.dart';

import 'data.dart';
import 'math.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //debugShowCheckedModeBanner: false,
      appBar: AppBar(
        title: const Text("Menu Utama"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Pilih Menu',
            style: TextStyle(
                fontSize: 35,
                color: Colors.teal,
                fontWeight: FontWeight.bold
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: MaterialButton(
                      child: const Text('Calculator'),
                        color:
                        Colors.lightBlue,
                        textColor:
                        Colors.white,
                        minWidth: double.infinity,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const MathPage())
                            );
                        },

                    ),
                  ),

                  const SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: MaterialButton(
                      child: const Text('Data Kelompok'),
                      color:
                      Colors.lightBlue,
                      textColor:
                      Colors.white,
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const DataPage())
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 30,),

                ],
              ),
          )
        ],
      ),
    );
  }
}