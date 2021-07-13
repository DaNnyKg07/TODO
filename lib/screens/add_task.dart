import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.blueAccent,
            ),),

            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            FlatButton(
              height: 35,
              child: Text(
              'Add',
              style: TextStyle(color: Colors.white,
            fontSize: 20,
              ),
            ),
            color: Colors.blueAccent,
            onPressed: (){}
            ,
            ),
          ],
        ),
      ),
    );
  }
}
