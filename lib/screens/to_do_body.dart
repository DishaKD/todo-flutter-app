import 'package:flutter/material.dart';
import 'package:todo_application/Class/todo.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List todos = [
    Todo(id: 1, title: 'First To Do', description: "Test", status: false),
    Todo(id: 2, title: 'Second To Do', description: "Test", status: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: InkWell(
                  child: makeListTile(todos[index], index),
                ),
              );
            }));
  }
}

makeListTile(Todo todo, index) {
  return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: const EdgeInsets.only(right: 12.0),
        decoration: const BoxDecoration(
            border: Border(right: BorderSide(width: 1.0, color: Colors.white))),
        child: CircleAvatar(
          backgroundColor: Color(0xFFECEFF1),
          child: Text(
            "${index + 1}",
            style: TextStyle(color: Color(0xFF000000)),
          ),
        ),
      ),
      title: Row(
        children: [
          Text(
            todo.title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          todo.status
              ? const Icon(
                  Icons.verified,
                  color: Colors.greenAccent,
                )
              : Container()
        ],
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Wrap(
        children: <Widget>[
          Text(todo.description,
              overflow: TextOverflow.clip,
              maxLines: 1,
              style: const TextStyle(color: Colors.black))
        ],
      ),
      trailing: InkWell(
          onTap: () {
            // delete(todo);
          },
          child: Icon(Icons.remove, color: Colors.black, size: 20.0)));
}
