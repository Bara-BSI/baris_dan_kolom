import 'package:flutter/material.dart';

class Barisdankolom extends StatelessWidget {
  const Barisdankolom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris dan Kolom by Bara"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 1; i <= 3; i++) 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var j = 1; j <= 3; j++) 
                  Padding(
                    padding: EdgeInsets.only(top: 80, left: 5, right: 5, bottom: 80),
                    child: 
                      Text("Baris $i Kolom $j",style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurple
                      ),)
                    )
              ],
            )
        ],
      ),
    );
  }
}