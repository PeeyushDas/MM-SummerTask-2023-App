import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MM(),
  ));
}

class MM extends StatefulWidget {
  const MM({Key? key}) : super(key: key);

  @override
  State<MM> createState() => _MMState();
}

class _MMState extends State<MM> {
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
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '🔥 Trending',

                ),

              ],
            ),
            color: Colors.deepOrange,


          ),
          Divider(
            height: 25,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Text(
              '2'
            ),
            color: Colors.cyan ,

          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Text(
              '3'
            ),
            color: Colors.brown,

          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Text(
              '4'
            ),
            color: Colors.lime,
          ),
        ],
      ),


    );
  }
}

