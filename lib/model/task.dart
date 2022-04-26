class Task {
  final String desc;
  bool? isChecked;

  Task({
    required this.desc,
    this.isChecked = false,
  });

  void toggleDone() {
    isChecked = !isChecked!;
  }
}
