import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class HistorialPuestoEmpleadoRecord extends FirestoreRecord {
  HistorialPuestoEmpleadoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "empleado" field.
  DocumentReference? _empleado;
  DocumentReference? get empleado => _empleado;
  bool hasEmpleado() => _empleado != null;

  // "puesto" field.
  DocumentReference? _puesto;
  DocumentReference? get puesto => _puesto;
  bool hasPuesto() => _puesto != null;

  void _initializeFields() {
    _empleado = snapshotData['empleado'] as DocumentReference?;
    _puesto = snapshotData['puesto'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('historialPuestoEmpleado');

  static Stream<HistorialPuestoEmpleadoRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => HistorialPuestoEmpleadoRecord.fromSnapshot(s));

  static Future<HistorialPuestoEmpleadoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistorialPuestoEmpleadoRecord.fromSnapshot(s));

  static HistorialPuestoEmpleadoRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      HistorialPuestoEmpleadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorialPuestoEmpleadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorialPuestoEmpleadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorialPuestoEmpleadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorialPuestoEmpleadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorialPuestoEmpleadoRecordData({
  DocumentReference? empleado,
  DocumentReference? puesto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'empleado': empleado,
      'puesto': puesto,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorialPuestoEmpleadoRecordDocumentEquality
    implements Equality<HistorialPuestoEmpleadoRecord> {
  const HistorialPuestoEmpleadoRecordDocumentEquality();

  @override
  bool equals(
      HistorialPuestoEmpleadoRecord? e1, HistorialPuestoEmpleadoRecord? e2) {
    return e1?.empleado == e2?.empleado && e1?.puesto == e2?.puesto;
  }

  @override
  int hash(HistorialPuestoEmpleadoRecord? e) =>
      const ListEquality().hash([e?.empleado, e?.puesto]);

  @override
  bool isValidKey(Object? o) => o is HistorialPuestoEmpleadoRecord;
}
