class Task {
  String taskTitle;
  bool isCompleted;

  Task({this.taskTitle, this.isCompleted = false});

  changeTaskComplete() {
    this.isCompleted = !this.isCompleted;
  }
}
