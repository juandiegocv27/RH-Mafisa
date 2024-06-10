import '/flutter_flow/flutter_flow_util.dart';
import 'beneficios_widget.dart' show BeneficiosWidget;
import 'package:flutter/material.dart';

class BeneficiosModel extends FlutterFlowModel<BeneficiosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
