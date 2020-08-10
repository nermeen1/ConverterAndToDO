import 'package:app1/todoapp/modles/task.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  Set<Task> list;

  Function deleteNocomplete;

  News({this.list, this.deleteNocomplete});

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
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
                      widget.deleteNocomplete(widget.list.toList()[index]);

                      setState(() {});
                    }),
              );
            });
  }
}
