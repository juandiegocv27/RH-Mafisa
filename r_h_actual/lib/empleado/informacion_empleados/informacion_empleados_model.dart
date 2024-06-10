import '/flutter_flow/flutter_flow_util.dart';
import 'informacion_empleados_widget.dart' show InformacionEmpleadosWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class InformacionEmpleadosModel
    extends FlutterFlowModel<InformacionEmpleadosWidget> {
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
