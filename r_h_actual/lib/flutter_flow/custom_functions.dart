import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

DocumentReference? strToReference(String? referenceId) {
  if (referenceId == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('empleados/$referenceId');
}

String? cantidadDiasVacaciones(DateTime? fechaIngreso) {
  // calcular dias de vacaciones desde fecha ingreso, acumula un dia por mes
  if (fechaIngreso == null) {
    return null;
  }
  final now = DateTime.now();
  final months =
      now.month - fechaIngreso.month + 12 * (now.year - fechaIngreso.year);
  final days = (months * 1).floor();
  return '$days días';
}

int? costoTotal(
  int? numeroEmpleados,
  int? precioBeneficio,
) {
  int total = numeroEmpleados! * precioBeneficio!;
  return total;
}

DocumentReference? strToPuestoReference(String? referenceId) {
  if (referenceId == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('Puestos/$referenceId');
}

DocumentReference? strToDepartamentoReference(String? referenceId) {
  if (referenceId == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('departamento/$referenceId');
}

DocumentReference? strToCapacitacionReference(String? referenceId) {
  if (referenceId == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('capacitaciones/$referenceId');
}

int? calcularCantidadDias(
  DateTime? fechaInicio,
  DateTime? fechaFin,
) {
  // calcular cantidad de días entre una fecha inicial y una fecha final
  if (fechaInicio == null || fechaFin == null) {
    return null;
  }
  final difference = fechaFin.difference(fechaInicio);
  return difference.inDays + 1; // add 1 to include both start and end dates
}

int diasEntreDosFechas(
  DateTime fechaInicial,
  DateTime fechaFinal,
) {
  // Saber la cantidad de días entre dos fechas
  final difference = fechaFinal.difference(fechaInicial);
  return difference.inDays;
}
