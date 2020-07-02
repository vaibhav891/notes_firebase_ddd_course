import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_firebase_ddd_course/injection.dart';

import 'UI/login.dart';

void main() {
  configureDependencies(Environment.prod);
  runApp(MyApp());
}

