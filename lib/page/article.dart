import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    home: articl(),
  ));
}


class articl extends StatefulWidget {
  const articl({Key? key}) : super(key: key);

  @override
  State<articl> createState() => _articlState();
}

class _articlState extends State<articl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            children: [
              CircleAvatar(

              ),
              SizedBox(width: 20),
              Text('Monday Morning',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}

