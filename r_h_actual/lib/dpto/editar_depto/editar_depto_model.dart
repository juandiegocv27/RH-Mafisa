import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_depto_widget.dart' show EditarDeptoWidget;
import 'package:flutter/material.dart';

class EditarDeptoModel extends FlutterFlowModel<EditarDeptoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for objText widget.
  FocusNode? objTextFocusNode;
  TextEditingController? objTextTextController;
  String? Function(BuildContext, String?)? objTextTextControllerValidator;
  String? _objTextTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 4) {
      return 'Minimo 4 caracteres';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    objTextTextControllerValidator = _objTextTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    objTextFocusNode?.dispose();
    objTextTextController?.dispose();
  }
}
