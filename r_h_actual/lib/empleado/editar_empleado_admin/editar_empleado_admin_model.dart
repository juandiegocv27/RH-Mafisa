import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_empleado_admin_widget.dart' show EditarEmpleadoAdminWidget;
import 'package:flutter/material.dart';

class EditarEmpleadoAdminModel
    extends FlutterFlowModel<EditarEmpleadoAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 3) {
      return 'Minimo 3 caracteres';
    }
    if (val.length > 15) {
      return 'Maximo 15 caracteres';
    }

    return null;
  }

  // State field(s) for cedula widget.
  FocusNode? cedulaFocusNode;
  TextEditingController? cedulaTextController;
  String? Function(BuildContext, String?)? cedulaTextControllerValidator;
  String? _cedulaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 9) {
      return 'Minimo 9 digitos';
    }
    if (val.length > 15) {
      return 'Maximo 15 digitos';
    }

    return null;
  }

  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  String? _telefonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length > 8) {
      return 'Maximo 8 digitos';
    }

    return null;
  }

  // State field(s) for domicilio widget.
  FocusNode? domicilioFocusNode;
  TextEditingController? domicilioTextController;
  String? Function(BuildContext, String?)? domicilioTextControllerValidator;
  String? _domicilioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for estado_civil widget.
  FocusNode? estadoCivilFocusNode;
  TextEditingController? estadoCivilTextController;
  String? Function(BuildContext, String?)? estadoCivilTextControllerValidator;
  String? _estadoCivilTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length > 15) {
      return 'maximo 15 caracteres';
    }

    return null;
  }

  // State field(s) for nacionalidad widget.
  FocusNode? nacionalidadFocusNode;
  TextEditingController? nacionalidadTextController;
  String? Function(BuildContext, String?)? nacionalidadTextControllerValidator;
  String? _nacionalidadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for genero widget.
  FocusNode? generoFocusNode;
  TextEditingController? generoTextController;
  String? Function(BuildContext, String?)? generoTextControllerValidator;
  String? _generoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length > 10) {
      return 'Maximo 10 caracteres';
    }

    return null;
  }

  // State field(s) for salario widget.
  FocusNode? salarioFocusNode;
  TextEditingController? salarioTextController;
  String? Function(BuildContext, String?)? salarioTextControllerValidator;
  String? _salarioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for DDDepto widget.
  String? dDDeptoValue;
  FormFieldController<String>? dDDeptoValueController;
  // State field(s) for DDPuesto widget.
  String? dDPuestoValue;
  FormFieldController<String>? dDPuestoValueController;
  // State field(s) for DDHorario widget.
  String? dDHorarioValue;
  FormFieldController<String>? dDHorarioValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  DateTime? datePicked1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    cedulaTextControllerValidator = _cedulaTextControllerValidator;
    telefonoTextControllerValidator = _telefonoTextControllerValidator;
    domicilioTextControllerValidator = _domicilioTextControllerValidator;
    estadoCivilTextControllerValidator = _estadoCivilTextControllerValidator;
    nacionalidadTextControllerValidator = _nacionalidadTextControllerValidator;
    generoTextControllerValidator = _generoTextControllerValidator;
    salarioTextControllerValidator = _salarioTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    cedulaFocusNode?.dispose();
    cedulaTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    domicilioFocusNode?.dispose();
    domicilioTextController?.dispose();

    estadoCivilFocusNode?.dispose();
    estadoCivilTextController?.dispose();

    nacionalidadFocusNode?.dispose();
    nacionalidadTextController?.dispose();

    generoFocusNode?.dispose();
    generoTextController?.dispose();

    salarioFocusNode?.dispose();
    salarioTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController9?.dispose();

    textFieldFocusNode2?.dispose();
    textController10?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
