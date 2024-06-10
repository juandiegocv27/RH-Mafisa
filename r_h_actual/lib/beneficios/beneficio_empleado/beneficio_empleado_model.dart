import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'beneficio_empleado_widget.dart' show BeneficioEmpleadoWidget;
import 'package:flutter/material.dart';

class BeneficioEmpleadoModel extends FlutterFlowModel<BeneficioEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
