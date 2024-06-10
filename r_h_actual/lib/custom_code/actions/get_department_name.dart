// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> getDepartmentName(DocumentReference? departmentReference) async {
  // Add your function code here!
  if (departmentReference == null) {
    return ''; // or null if you want!
  }
  final departmentSnapshot = await departmentReference.get();
  final department = departmentSnapshot.data() as Map<String, dynamic>;
  return department['nombre'] ?? ''; // or null if you want!
}
