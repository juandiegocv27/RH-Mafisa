import '/flutter_flow/flutter_flow_util.dart';
import 'capacitaciones_widget.dart' show CapacitacionesWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CapacitacionesModel extends FlutterFlowModel<CapacitacionesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextNombre widget.
  FocusNode? textNombreFocusNode;
  TextEditingController? textNombreTextController;
  String? Function(BuildContext, String?)? textNombreTextControllerValidator;
  // State field(s) for TextDescripcion widget.
  FocusNode? textDescripcionFocusNode;
  TextEditingController? textDescripcionTextController;
  String? Function(BuildContext, String?)?
      textDescripcionTextControllerValidator;
  // State field(s) for TextTipo widget.
  FocusNode? textTipoFocusNode;
  TextEditingController? textTipoTextController;
  String? Function(BuildContext, String?)? textTipoTextControllerValidator;
  // State field(s) for TextInicio widget.
  FocusNode? textInicioFocusNode;
  TextEditingController? textInicioTextController;
  final textInicioMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textInicioTextControllerValidator;
  // State field(s) for TextFinaliza widget.
  FocusNode? textFinalizaFocusNode;
  TextEditingController? textFinalizaTextController;
  final textFinalizaMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textFinalizaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textNombreFocusNode?.dispose();
    textNombreTextController?.dispose();

    textDescripcionFocusNode?.dispose();
    textDescripcionTextController?.dispose();

    textTipoFocusNode?.dispose();
    textTipoTextController?.dispose();

    textInicioFocusNode?.dispose();
    textInicioTextController?.dispose();

    textFinalizaFocusNode?.dispose();
    textFinalizaTextController?.dispose();
  }
}
