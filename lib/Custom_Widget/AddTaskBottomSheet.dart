import 'package:flutter/material.dart';

class AddTasks extends StatefulWidget {

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  String? newText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text('Add Task', style: TextStyle(fontSize: 25,color: Colors.lightBlueAccent),textAlign: TextAlign.center,),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (newValue){
                setState((){
                  newText = newValue;
                });
              },
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: (){
                  print(newText);
                },
              child: Text('Add', style: TextStyle(color: Colors.white)),
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent)),)
          ],
        ),
      ),

    );
  }
}
