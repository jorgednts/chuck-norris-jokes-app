import 'package:flutter/material.dart';
import 'todo/components/add_task_widget.dart';
import 'todo/components/list_task_widget.dart';


class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController textController = TextEditingController();
  List<TaskModel> listToDo = [];

  void addToDo() {
    if (textController.text.isNotEmpty) {
      var newTask = TaskModel(description: textController.text);
      listToDo.add(newTask);
      textController.text = '';
    }
  }

  void updateStatusTask(bool? value, int index) {
    listToDo[index].completed = value ?? false;
  }

  void onRemovedTaskOfList(int index){
    listToDo.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Image.asset('assets/images/logo_home.png'),
            ),
            const Text(
              "Lista de Tarefas",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(17, 24, 17, 40),
                child: InputTaskWidget(
                  labelText: 'Nova Tarefa',
                  textButton: 'ADD',
                  textController: textController,
                  onPressed: () {
                    setState(() {
                      addToDo();
                    });
                  },
                )),
            ListTaskWidget(
                listToDo: listToDo,
                onChanged: (value, index) => setState(() {
                      updateStatusTask(value, index);
                    }), onRemoved: (index) {
                  setState(() {
                    onRemovedTaskOfList(index);
                  });
            },),
          ],
        ),
      ),
    );
  }
}

class TaskModel {
  bool completed;
  String description;

  TaskModel({this.completed = false, required this.description});
}
