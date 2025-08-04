import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudyListviewBuilder extends StatefulWidget {
  const StudyListviewBuilder({super.key});

  @override
  State<StudyListviewBuilder> createState() => _StudyListviewBuilderState();
}

class _StudyListviewBuilderState extends State<StudyListviewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("name"),
            subtitle: Text("sub"),
            leading: CircleAvatar(),
            trailing: Icon(Icons.ac_unit_rounded),
          );
        },
      ),
    );
  }
}
