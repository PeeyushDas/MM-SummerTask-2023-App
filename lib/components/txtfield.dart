import 'package:flutter/material.dart';

class Txtf extends StatefulWidget {
  @override
  State<Txtf> createState() => _TxtfState();
}

class _TxtfState extends State<Txtf> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(179, 216, 213, 213),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
          hintText: 'Username',
          suffixIcon: const Icon(Icons.person),
        ),
      ),
    );
  }
}

class Txtf2 extends StatefulWidget {
  const Txtf2({super.key});

  @override
  State<Txtf2> createState() => _Txtf2State();
}

class _Txtf2State extends State<Txtf2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(179, 216, 213, 213),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
          hintText: 'Password',
          suffixIcon: const Icon(Icons.person),
        ),
      ),
    );
  }
}
