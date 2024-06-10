import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'rendimiento_widget.dart' show RendimientoWidget;
import 'package:flutter/material.dart';

class RendimientoModel extends FlutterFlowModel<RendimientoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for objText widget.
  FocusNode? objTextFocusNode;
  TextEditingController? objTextTextController;
  String? Function(BuildContext, String?)? objTextTextControllerValidator;
  // State field(s) for dateText widget.
  FocusNode? dateTextFocusNode;
  TextEditingController? dateTextTextController;
  String? Function(BuildContext, String?)? dateTextTextControllerValidator;
  // State field(s) for calText widget.
  FocusNode? calTextFocusNode;
  TextEditingController? calTextTextController;
  String? Function(BuildContext, String?)? calTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    objTextFocusNode?.dispose();
    objTextTextController?.dispose();

    dateTextFocusNode?.dispose();
    dateTextTextController?.dispose();

    calTextFocusNode?.dispose();
    calTextTextController?.dispose();
  }
}
