class Event{
  String data;
  bool completed;
  Event({required this.data,this.completed = false});

  void toggleCompleted(){
    this.completed = !this.completed;
  }

  String getData(){
    return this.data;
  }

  bool getCompleted(){
    return this.completed;
  }
}
