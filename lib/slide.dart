import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidePage extends StatefulWidget {
  const SlidePage({super.key});

  @override
  State<SlidePage> createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Slidable(
              startActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: ((context) {
                        //call number
                      }),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      icon: Icons.phone,
                    ),
                    SlidableAction(
                      onPressed: ((context) {
                        //call number
                      }),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      icon: Icons.chat,
                    ),
                  ],
              ),
              endActionPane: ActionPane(
                motion: const StretchMotion(),
                children: [
                  SlidableAction(
                    onPressed: ((context) {
                      //delete
                    }),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                  ),
                ]
              ),
              child: Container(
                color: Colors.grey[300],
                child: const ListTile(
                  title: Text('Brandon Lackey'),
                  subtitle: Text('909-273-1334'),
                  leading: Icon(
                    Icons.person,
                    size: 40,
                  ),
                ),
              ),
            ),
        ),
        ),
    );
  }
}
