import '/flutter_flow/flutter_flow_util.dart';
import 'horarios_widget.dart' show HorariosWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class HorariosModel extends FlutterFlowModel<HorariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
