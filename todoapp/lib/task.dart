class TASK {
  bool done;
  String taskName;

  TASK({required this.taskName, this.done = false});

  void toggle() {
    done = !done;
  }
}