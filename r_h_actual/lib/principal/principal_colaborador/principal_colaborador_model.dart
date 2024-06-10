import '/flutter_flow/flutter_flow_util.dart';
import 'principal_colaborador_widget.dart' show PrincipalColaboradorWidget;
import 'package:flutter/material.dart';

class PrincipalColaboradorModel
    extends FlutterFlowModel<PrincipalColaboradorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
