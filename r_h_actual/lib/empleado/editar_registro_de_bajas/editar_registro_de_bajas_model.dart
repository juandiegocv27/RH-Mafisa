import '/flutter_flow/flutter_flow_util.dart';
import 'editar_registro_de_bajas_widget.dart' show EditarRegistroDeBajasWidget;
import 'package:flutter/material.dart';

class EditarRegistroDeBajasModel
    extends FlutterFlowModel<EditarRegistroDeBajasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 4) {
      return 'Minimo 4 caracteres';
    }
    if (val.length > 50) {
      return 'Maximo 50 caracteres';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textController2Validator = _textController2Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
