import 'package:basics/self_work/Fitness_club.dart';
import 'package:basics/sign_up_page.dart';
import 'package:basics/Widgets/study_buttons.dart';
import 'package:flutter/material.dart';

import 'Flutter_row_column_work2.dart';
import 'Flutter_rows_column_work.dart';
import 'Login_img_form.dart';
import 'Login_page_wok.dart' show Pagelogin;
import 'Study_bottom_navigation/study_Bottom_navigation.dart';
import 'Web_login_ui/Web_ui.dart';
import 'Widgets/study_textform.dart';
import 'chess_board.dart';
import 'col_row_work.dart';
import 'container_work.dart';
import 'image/Add images.dart';
import 'image/Sign_up_form.dart';
import 'new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyNavigationBar ()
    );
  }
}
