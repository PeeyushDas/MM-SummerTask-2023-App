import 'package:flutter/material.dart';

class creatart extends StatefulWidget {
  const creatart({super.key});

  @override
  State<creatart> createState() => _creatartState();
}

class _creatartState extends State<creatart> {
  var titl = TextEditingController();
  var desc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('lib/assests/mm.png'),
            ),
            SizedBox(width: 20),
            Text('MONDAY MORNING'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: TextField(
                controller: titl,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(179, 216, 213, 213),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Enter Title',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: SizedBox(
                width: 360,
                height: 550,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  controller: desc,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(179, 216, 213, 213),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter Article',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 360,
              child: ElevatedButton(
                  onPressed: () {
                    var art = {
                      "title": titl.text,
                      "description": desc.text,
                    };
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text('Add Article')),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
