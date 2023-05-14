import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/admin.dart';
import 'package:mm_summertask_2023_app/page/home.dart';
import 'package:mm_summertask_2023_app/page/search.dart';

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

      bottomNavigationBar: BottomAppBar(
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, '/');
             },
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Background color
  ),
             child: Icon(
              Icons.home,
              color: Colors.black,),
             
             ),
            ElevatedButton(onPressed: (){
Navigator.pushReplacement(
    context, 
    PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => article(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
    ),
);                 },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,),
             
             child: Icon(
              Icons.article_sharp,
              color: Colors.black,
             ),
             
             ),
             ElevatedButton(onPressed: (){
Navigator.pushReplacement(
    context, 
    PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => search(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
    ),
);             },
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,),
             child: Icon(
              Icons.search,
              color: Colors.black,
             ),
             ),
            ElevatedButton(onPressed: () {
Navigator.pushReplacement(
    context, 
    PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => admin(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
    ),
);                       },
                   style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,),
                 child: Icon(
              Icons.account_circle_rounded,
              color: Colors.black,
             ),
                 ),
          ],
        ),
             
      
    color: Colors.white,


    ),
    );
    
  }
}

