class Todo {
  String id;
  String todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List <Todo> todoList(){
    return [
      Todo(id: '1', todoText: 'Morning Exercise', isDone: true, ),
      Todo(id: '2', todoText: 'Buy Groceries', isDone: true, ),
      Todo(id: '3', todoText: 'Check Mails'),
      Todo(id: '4', todoText: 'Team Meating'),
      Todo(id: '5', todoText: 'Work on mobile app for 2 hours'),
      Todo(id: '6', todoText: 'Dinner with Natalie'),
    ];
  }
}
