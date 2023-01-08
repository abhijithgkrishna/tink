import 'components/card.dart';
import 'package:flutter/material.dart';
import 'package:tink/components/card.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const PageScaffoldApp());

class PageScaffoldApp extends StatelessWidget {
  const PageScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Class",
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          titleSpacing: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Google Classroom",
            style: GoogleFonts.getFont('Roboto', color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade300),
                    image: const DecorationImage(
                        image: AssetImage("assets/sef.png"),
                        fit: BoxFit.cover)),
                child: const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.person,
                    color: Color.fromARGB(0, 8, 8, 8),
                  ),
                ),
              ),
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_vert,
                color: Color.fromARGB(255, 98, 98, 98),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: null,
          child: Icon(
            Icons.add,
            color: Colors.blue[900],
          ),
        ),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            children: const <Widget>[
              Cards(
                text: "2022 CST285 Data Comm",
                description: "Data structures course",
                teacher: "Neenaraj N R",
              ),
              Cards(
                text: "bcd",
                teacher: "f;kkj",
                description: "MAT102",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Drawer extends StatelessWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Abc"),
    );
  }
}
