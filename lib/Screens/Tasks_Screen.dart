import 'package:flutter/material.dart';
import '../Custom_Widget/Tasks_List.dart';
import '../Custom_Widget/AddTaskBottomSheet.dart';
import '../Custom_Widget/task.dart';


class TasksScreen extends StatefulWidget {

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

List<Task> tasks = [
  Task(name: 'Buy milk'),
  Task(name: 'Buy eggs'),
  Task(name: 'Buy bread'),
];

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
              child:Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTasks(),
              )
          ) );
        },
        child: Icon(Icons.add, color: Colors.white, size: 32),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 18),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list,size: 35,color: Colors.lightBlueAccent,),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: 20),
                Text('Todoey',style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800, color: Colors.white)),
                Text('12 Tasks', style: TextStyle(color: Colors.white, fontSize: 18)),

              ],
        ),

            ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: TasksList(tasks)),
              ),
            ]
          ),
    );
  }
}


