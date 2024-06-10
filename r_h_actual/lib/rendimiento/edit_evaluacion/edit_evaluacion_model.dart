import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_evaluacion_widget.dart' show EditEvaluacionWidget;
import 'package:flutter/material.dart';

class EditEvaluacionModel extends FlutterFlowModel<EditEvaluacionWidget> {
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
  // State field(s) for commentText widget.
  FocusNode? commentTextFocusNode;
  TextEditingController? commentTextTextController;
  String? Function(BuildContext, String?)? commentTextTextControllerValidator;

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

    commentTextFocusNode?.dispose();
    commentTextTextController?.dispose();
  }
}
