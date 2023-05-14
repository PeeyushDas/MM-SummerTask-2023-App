import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/admin.dart';
import 'package:mm_summertask_2023_app/page/article.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:mm_summertask_2023_app/page/search.dart';

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
        title:
            Container(
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
      body:

      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
            TextField(
              style: TextStyle(height:0.15),
              decoration: InputDecoration( 
                 filled: true,
                 fillColor: Color.fromARGB(179, 216, 213, 213),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide.none,
                 ),
                 hintText: 'Search',
                 suffixIcon: Icon(Icons.search),
            ),

                 
            ),
            SizedBox(height: 10),
      
                  const Text(
                    '🔥 Trending',
                    style: (
                        TextStyle(
                          fontSize: 20,
                        )
                    ),
                  ),
                  SizedBox(height: 10),
                  ScrollLoopAutoScroll(
                    delay: Duration(seconds: 5),
                    duration: Duration(seconds: 50),
                    gap: 0,
                    scrollDirection: Axis.horizontal,
                    delayAfterScrollInput : Duration(seconds: 5),
      
                    child: Row(
                      children: [
      
                        article(),
                        article(),
                        article(),
                        article(),
      
                      ],
                    ),
      
                  ),
      
                ],
              ),
      
      
            ),
      
            Divider(
              height: 25,
              color: Colors.grey,
            ),
            article(),
            article(),
            article(),
            article(),
            article(),
            article(),
            article(),
            article(),
            article(),
            article(),
            article(),
            article(),            
           
      
            
          ],
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
);
             },
             
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

class article extends StatefulWidget {
  const article({Key? key}) : super(key: key);

  @override
  State<article> createState() => _articleState();
}

class _articleState extends State<article> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      width: 270,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue,
      ),
      child: Text(
          'Article '
      ),
    );
  }
}
