import 'package:flutter/material.dart';
import 'package:todo_application/Class/todo.dart';
import 'package:todo_application/Constants/colors.dart';

class TodoView extends StatefulWidget {
  Todo todo;
  TodoView({Key? key, required this.todo}) : super(key: key);

  @override
  _TodoViewState createState() => _TodoViewState(todo: this.todo);
}

class _TodoViewState extends State<TodoView> {
  Todo todo;
  _TodoViewState({required this.todo});
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (todo != null) {
      titleController.text = todo.title;
      descriptionController.text = todo.description;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        backgroundColor: kAppBarColor,
        title: const Text("View Your To Do"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: colorOverride(
                  TextField(
                    onChanged: (data) {
                      todo.title = data;
                    },
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: Colors.black),
                      labelText: "Title",
                      fillColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      //fillColor: Colors.green
                    ),
                    controller: titleController,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                  child: colorOverride(TextField(
                maxLines: 5,
                onChanged: (data) {
                  todo.description = data;
                },
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(color: Colors.black),
                  labelText: "Description",
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  //fillColor: Colors.green
                ),
                controller: descriptionController,
              ))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 55.0,
        child: BottomAppBar(
          color: kButtonColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              title: Text("Alert"),
                              content: Text(
                                  "To Do ${todo.status ? 'not complete' : 'incomplete'}  "),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Text("No"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      todo.status = !todo.status;
                                    });
                                    Navigator.of(ctx).pop();
                                  },
                                  child: const Text("Yes"),
                                )
                              ],
                            ));
                  },
                  child: Text(
                    "${todo.status ? 'To Do Complete' : 'To Do Incomplete'} ",
                    style: const TextStyle(color: Colors.white),
                  )),
              const VerticalDivider(
                color: Colors.white,
              ),
              IconButton(
                icon: const Icon(Icons.check_circle, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context, todo);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget colorOverride(Widget child) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.black,
        hintColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
      ),
      child: child,
    );
  }
}
