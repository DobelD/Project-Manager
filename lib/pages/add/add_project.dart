import 'package:dobeld_project/pages/widget/add_project/appbar.dart';
import 'package:dobeld_project/pages/widget/add_project/form_add.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';

class AddProject extends StatefulWidget {
  const AddProject({super.key});

  @override
  State<AddProject> createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 30,
            width: double.infinity,
            color: secondC,
          ),
          appBarddProject(context),
          formAddProject(context)
        ],
      ),
    ));
  }
}
