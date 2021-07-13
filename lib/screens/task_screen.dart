import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/Widgets/tasks_list.dart';
import 'package:todo/screens/add_task.dart';



class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)=> AddTask());
        },
      child: Icon(Icons.add),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(child: Icon(Icons.list,
                  size: 30,
                color: Colors.blueAccent,),
                backgroundColor: Colors.white,
                radius: 30,),
                SizedBox(
                  height: 10,
                ),
                Text('TODO',style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
                ),
                Text('12 Tasks',style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}



