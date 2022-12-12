import 'package:dobeld_project/pages/widget/add_task/appbar.dart';
import 'package:dobeld_project/pages/widget/add_task/form_add.dart';
import 'package:flutter/material.dart';

import '../../component/style.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 30,
            width: widthDevice,
            color: secondC,
          ),
          appBaraddTask(context),
          formAddTask(context)
        ],
      ),
    ));
  }
}
