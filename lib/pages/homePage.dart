import 'package:aplicacion_demo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("APBar"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 34, 18),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            isScrollable: false,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.task),
                text: "Asiganda",
              ),
              Tab(
                icon: Icon(Icons.pending_actions),
                text: "Pendiente",
              ),
              Tab(
                icon: Icon(Icons.done),
                text: "Finalizada",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildPage("uno"),
            buildPage("Dos"),
            buildPage("Tres"),
            buildPage("Cuatro"),
          ],
        ),
      ));
}

Widget buildPage(String text) => Center(
      child: Text(text),
    );
