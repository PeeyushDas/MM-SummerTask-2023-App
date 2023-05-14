import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/admin.dart';
import 'package:mm_summertask_2023_app/page/article.dart';
import 'package:mm_summertask_2023_app/page/home.dart';



class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            children: const [
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
Navigator.pushReplacement(
    context, 
    PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => MM(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
    ),
);                   },
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
        pageBuilder: (context, animation1, animation2) => articl(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
    ),
);                   },style: ElevatedButton.styleFrom(
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
);                   },
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
);                         },
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
