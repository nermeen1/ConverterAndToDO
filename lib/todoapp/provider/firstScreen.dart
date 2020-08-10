// import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:app1/todoapp/modles/task.dart';
import 'package:app1/todoapp/provider/new.dart';
import 'package:app1/todoapp/provider/setting.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  List<Task> allTasks = [
    Task(taskTitle: 'Read book'),
    Task(taskTitle: 'play'),
    Task(taskTitle: 'music'),
    Task(taskTitle: 'TV'),
    Task(taskTitle: 'Swimming'),
  ];
  Set<Task> completeTasks = {};
  Set<Task> noCompleteTasks = {};

  completeTask(Task task) {
    completeTasks.add(task);
    noCompleteTasks.remove(task);

    // allTasks.remove(task);
    setState(() {});
  }

  addTask(String taskTitle) {
    allTasks.add(Task(taskTitle: taskTitle));
    noCompleteTasks = allTasks.toSet();
    setState(() {});
  }

  noCompleteTask(Task task) {
    noCompleteTasks.add(task);
    completeTasks.remove(task);
    setState(() {});
  }

  deleteNocomplete(Task task) {
    noCompleteTasks.remove(task);
    setState(() {});
  }

  var _myScaffold = GlobalKey<ScaffoldState>();
  TabController tabBarcontroller;

  @override
  void initState() {
    super.initState();
    tabBarcontroller = TabController(length: 3, vsync: this);
    for (var item in allTasks) {
      noCompleteTasks.add(item);
    }
  }

  var tabs = ['Taks', 'Complete', 'No Complete'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _myScaffold,
      appBar: AppBar(
        title: Text('Lab2'),
        centerTitle: true,
        bottom: TabBar(
          controller: tabBarcontroller,
          tabs: tabs
              .map((e) => Tab(
                    child: Text(e),
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(controller: tabBarcontroller, children: [
        Home(
          list: allTasks,
          completeTask: completeTask,
          noCompleteTask: noCompleteTask,
          addTaskToList: addTask,
        ),
        Setting(
          list: completeTasks,
          nocompleteTask: noCompleteTask,
        ),
        News(
          list: noCompleteTasks,
          deleteNocomplete: deleteNocomplete,
        )
      ]),
    );
  }
}
