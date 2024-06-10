import '/flutter_flow/flutter_flow_util.dart';
import 'promociones_widget.dart' show PromocionesWidget;
import 'package:flutter/material.dart';

class PromocionesModel extends FlutterFlowModel<PromocionesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
