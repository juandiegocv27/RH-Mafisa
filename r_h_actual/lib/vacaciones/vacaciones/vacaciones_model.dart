import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'vacaciones_widget.dart' show VacacionesWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class VacacionesModel extends FlutterFlowModel<VacacionesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Motivo widget.
  FocusNode? motivoFocusNode;
  TextEditingController? motivoTextController;
  String? Function(BuildContext, String?)? motivoTextControllerValidator;
  String? _motivoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for fechaInicio widget.
  FocusNode? fechaInicioFocusNode;
  TextEditingController? fechaInicioTextController;
  String? Function(BuildContext, String?)? fechaInicioTextControllerValidator;
  String? _fechaInicioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for fechaFin widget.
  FocusNode? fechaFinFocusNode;
  TextEditingController? fechaFinTextController;
  String? Function(BuildContext, String?)? fechaFinTextControllerValidator;
  String? _fechaFinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for Estado widget.
  FocusNode? estadoFocusNode;
  TextEditingController? estadoTextController;
  String? Function(BuildContext, String?)? estadoTextControllerValidator;
  // State field(s) for diasSolicitados widget.
  FocusNode? diasSolicitadosFocusNode;
  TextEditingController? diasSolicitadosTextController;
  String? Function(BuildContext, String?)?
      diasSolicitadosTextControllerValidator;
  // State field(s) for diasDisponibles widget.
  FocusNode? diasDisponiblesFocusNode;
  TextEditingController? diasDisponiblesTextController;
  String? Function(BuildContext, String?)?
      diasDisponiblesTextControllerValidator;

  @override
  void initState(BuildContext context) {
    motivoTextControllerValidator = _motivoTextControllerValidator;
    fechaInicioTextControllerValidator = _fechaInicioTextControllerValidator;
    fechaFinTextControllerValidator = _fechaFinTextControllerValidator;
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    motivoFocusNode?.dispose();
    motivoTextController?.dispose();

    fechaInicioFocusNode?.dispose();
    fechaInicioTextController?.dispose();

    fechaFinFocusNode?.dispose();
    fechaFinTextController?.dispose();

    estadoFocusNode?.dispose();
    estadoTextController?.dispose();

    diasSolicitadosFocusNode?.dispose();
    diasSolicitadosTextController?.dispose();

    diasDisponiblesFocusNode?.dispose();
    diasDisponiblesTextController?.dispose();
  }
}
