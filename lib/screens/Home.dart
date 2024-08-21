import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  handleNavigationClick(String where) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            focusColor: Colors.black,
            onPressed: handleNavigationClick("home"),
            icon: const Icon(
              Icons.home,
              size: 40,
            ),
          ),
          IconButton(
            color: Colors.brown,
            focusColor: Colors.black,
            onPressed: handleNavigationClick("home"),
            icon: const Icon(
              Icons.add,
              size: 40,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FDos",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: TextField(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
