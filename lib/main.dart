import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/task_provider.dart';
import 'screens/task_manager_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskManagerScreen(),
      ),
    ),
  );
}