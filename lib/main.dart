import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/routes.dart';
void main() {
runApp(const MMapp());
}
class MMapp extends StatefulWidget {
  const MMapp({Key? key}) : super(key: key);

  @override
  State<MMapp> createState() => _MMappState();
}

class _MMappState extends State<MMapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: Approuter().router.routeInformationParser,
      routerDelegate: Approuter().router.routerDelegate,
    );
  }
}




