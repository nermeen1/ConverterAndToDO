import 'package:app1/todoapp/modles/task.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Set<Task> list;

  Function nocompleteTask;

  Setting({this.list, this.nocompleteTask});

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return widget.list.length == 0
        ? Center(
            child: Text('No Task'),
          )
        : ListView.builder(
            itemCount: widget.list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(widget.list.toList()[index].taskTitle),
                trailing: Checkbox(
                    value: widget.list.toList()[index].isCompleted,
                    onChanged: (click) {
                      widget.list.toList()[index].changeTaskComplete();
                      widget.nocompleteTask(widget.list.toList()[index]);

                      setState(() {});
                    }),
              );
            });
  }
}
