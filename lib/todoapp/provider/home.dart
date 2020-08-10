import 'package:app1/todoapp/modles/task.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  List<Task> list;

  Function completeTask;
  Function noCompleteTask;
  Function addTaskToList;

  Home({this.list, this.completeTask, this.noCompleteTask, this.addTaskToList});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView.builder(
            itemCount: widget.list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(widget.list[index].taskTitle),
                trailing: Checkbox(
                    value: widget.list[index].isCompleted,
                    onChanged: (click) {
                      widget.list[index].changeTaskComplete();

                      if (widget.list[index].isCompleted) {
                        widget.completeTask(widget.list[index]);
                      } else {
                        widget.noCompleteTask(widget.list[index]);
                      }
                      setState(() {});
                    }),
              );
            }),
      ],
    );
  }
}
