import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class EvaluacionesRecord extends FirestoreRecord {
  EvaluacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "calificacion" field.
  String? _calificacion;
  String get calificacion => _calificacion ?? '';
  bool hasCalificacion() => _calificacion != null;

  // "comentarios" field.
  String? _comentarios;
  String get comentarios => _comentarios ?? '';
  bool hasComentarios() => _comentarios != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  // "id_empleado" field.
  DocumentReference? _idEmpleado;
  DocumentReference? get idEmpleado => _idEmpleado;
  bool hasIdEmpleado() => _idEmpleado != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _calificacion = snapshotData['calificacion'] as String?;
    _comentarios = snapshotData['comentarios'] as String?;
    _objetivo = snapshotData['objetivo'] as String?;
    _idEmpleado = snapshotData['id_empleado'] as DocumentReference?;
    _fecha = snapshotData['fecha'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Evaluaciones');

  static Stream<EvaluacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EvaluacionesRecord.fromSnapshot(s));

  static Future<EvaluacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EvaluacionesRecord.fromSnapshot(s));

  static EvaluacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EvaluacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EvaluacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EvaluacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EvaluacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EvaluacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEvaluacionesRecordData({
  String? calificacion,
  String? comentarios,
  String? objetivo,
  DocumentReference? idEmpleado,
  String? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'calificacion': calificacion,
      'comentarios': comentarios,
      'objetivo': objetivo,
      'id_empleado': idEmpleado,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class EvaluacionesRecordDocumentEquality
    implements Equality<EvaluacionesRecord> {
  const EvaluacionesRecordDocumentEquality();

  @override
  bool equals(EvaluacionesRecord? e1, EvaluacionesRecord? e2) {
    return e1?.calificacion == e2?.calificacion &&
        e1?.comentarios == e2?.comentarios &&
        e1?.objetivo == e2?.objetivo &&
        e1?.idEmpleado == e2?.idEmpleado &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(EvaluacionesRecord? e) => const ListEquality().hash(
      [e?.calificacion, e?.comentarios, e?.objetivo, e?.idEmpleado, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is EvaluacionesRecord;
}
