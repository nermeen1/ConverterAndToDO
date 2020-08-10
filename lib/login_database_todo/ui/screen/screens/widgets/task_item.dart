import 'package:app1/login_database_todo/models/task_model.dart';
import 'package:app1/login_database_todo/provider/dp_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class TaskItem extends StatelessWidget {
  Task task;
  TaskItem(this.task);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dismissible(
      key: ObjectKey(task),
      onDismissed: (direction) {
        Provider.of<DBProvider>(context, listen: false).deleteTask(task);
      },
      child: Card(
        child: ListTile(
          title: Text(task.title),
          trailing: Checkbox(
            value: task.isComplete,
            onChanged: (value) {
              Provider.of<DBProvider>(context, listen: false).updateTask(task);
            },
          ),
        ),
      ),
    );
  }
}
