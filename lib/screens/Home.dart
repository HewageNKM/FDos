import 'package:f_dos/services/_to_do_service.dart';
import 'package:f_dos/services/_to_do_service_impl.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ToDoService service = ToDoServerImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[400],
        onPressed: () => _add_dialog(context),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.all(16),
                    hintText: "Search",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                color: const Color(0x00f8fafc),
                child: const Row(
                  children: [
                    Text(
                      "All",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                children: [],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _add_dialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: SizedBox(
          height: 220,
          child: AlertDialog.adaptive(
            contentPadding: const EdgeInsets.all(8),
            insetPadding: const EdgeInsets.all(8),
            actionsPadding: const EdgeInsets.all(8),
            title: const Center(
                child: Text(
              'Add Note',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            content: Column(
              // Ensures content does not overflow
              children: [form_field("Do home work.....", 8, 8, 8, null, 8)],
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Add'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}

Widget form_field(String placeholder, double roundedSize, double hPadding,
    double vPadding, IconData? icon, double innerPadding) {
  return ClipRect(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        style: const TextStyle(fontSize: 16),
        maxLines: 1,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(innerPadding),
          hintText: placeholder,
        ),
      ),
    ),
  );
}
