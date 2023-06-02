import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InsertarBeatModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for titulo widget.
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;
  // State field(s) for bpm widget.
  TextEditingController? bpmController;
  String? Function(BuildContext, String?)? bpmControllerValidator;
  // State field(s) for escala widget.
  TextEditingController? escalaController;
  String? Function(BuildContext, String?)? escalaControllerValidator;
  // State field(s) for prod widget.
  TextEditingController? prodController;
  String? Function(BuildContext, String?)? prodControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tituloController?.dispose();
    bpmController?.dispose();
    escalaController?.dispose();
    prodController?.dispose();
  }

  /// Additional helper methods are added here.

}
