import 'package:flutter/material.dart';
import 'package:kaizen_do/core/di/app_providers.dart';
import 'package:kaizen_do/domain/models/create_todo.dart';
import 'package:kaizen_do/domain/models/read_todo.dart';
import 'package:kaizen_do/domain/repository/todo/todo_repository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppProviders(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Kaizen Do'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final TodoRepository todoRepository;

  @override
  void initState() {
    todoRepository = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder(
        stream: todoRepository.todosStream,
        builder: (context, _) {
          final todos = todoRepository.todos;

          if (todos.isEmpty) {
            return const Center(
              child: Text('Создайте первую задачу'),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Checkbox(
                      value: todos[index].done,
                      onChanged: (value) => todoRepository.update(
                        todos[index].copyWith(done: value),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: screenSize.width - 130,
                      ),
                      child: Text(todos[index].title),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return SafeArea(
                            minimum: const EdgeInsets.only(bottom: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                top: 16.0,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 16),
                                    child: Text(
                                      'Вы уверены, что ходите удалить задачу?',
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: OutlinedButton(
                                          onPressed: () {
                                            todoRepository
                                                .delete(todos[index].id);
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Удалить'),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: FilledButton(
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: Text('Отмена'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onTapAdd,
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> onTapAdd() async {
    final todo = await showDialog<CreateTodo>(
      context: context,
      builder: (BuildContext context) {
        final controller = TextEditingController();

        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Задача:'),
                TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                    helperText: 'Название задачи',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {
                        if (controller.text.isEmpty) {
                          Navigator.of(context).pop();
                        }

                        Navigator.of(context).pop(CreateTodo(
                          title: controller.text,
                          done: false,
                        ));
                      },
                      child: const Text('Сохранить'),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );

    if (todo == null) {
      return;
    }

    todoRepository.insert(todo);
  }
}
