import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_summertask_2023_app/page/mm_route_constants.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
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
      
                  Text(
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
              GoRouter.of(context).pushNamed(MMapprouteConstants.articleRouteName);
             },
             child: Text (
              'article'
             ),
             ),
             ElevatedButton(onPressed: (){
              GoRouter.of(context).pushNamed(MMapprouteConstants.searchRouteName);
             },
             child: Text (
              'search'
             ),
             ),
            ElevatedButton(onPressed: () {
                  GoRouter.of(context).pushNamed(MMapprouteConstants.adminRouteName);
                   },
                 child: Text (
                  'admin'
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
        color: Colors.red,
      ),
      child: Text(
          'Article 1'
      ),
    );
  }
}
