import 'package:app1/login_database_todo/models/task_model.dart';
import 'package:app1/login_database_todo/provider/dp_provider.dart';
import 'package:app1/login_database_todo/ui/screen/screens/widgets/task_item.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class CompleteTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<DBProvider>(
      builder: (context, value, child) {
        List<Task> allTasks = value.completeTasks;
        return ListView.builder(
          itemCount: allTasks.length,
          itemBuilder: (context, index) {
            return TaskItem(allTasks[index]);
          },
        );
      },
    );
  }
}
