import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CapacitacionesEmpleadoRecord extends FirestoreRecord {
  CapacitacionesEmpleadoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "idEmpleado" field.
  DocumentReference? _idEmpleado;
  DocumentReference? get idEmpleado => _idEmpleado;
  bool hasIdEmpleado() => _idEmpleado != null;

  // "idCapacitacion" field.
  DocumentReference? _idCapacitacion;
  DocumentReference? get idCapacitacion => _idCapacitacion;
  bool hasIdCapacitacion() => _idCapacitacion != null;

  void _initializeFields() {
    _idEmpleado = snapshotData['idEmpleado'] as DocumentReference?;
    _idCapacitacion = snapshotData['idCapacitacion'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('capacitacionesEmpleado');

  static Stream<CapacitacionesEmpleadoRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CapacitacionesEmpleadoRecord.fromSnapshot(s));

  static Future<CapacitacionesEmpleadoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CapacitacionesEmpleadoRecord.fromSnapshot(s));

  static CapacitacionesEmpleadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CapacitacionesEmpleadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CapacitacionesEmpleadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CapacitacionesEmpleadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CapacitacionesEmpleadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CapacitacionesEmpleadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCapacitacionesEmpleadoRecordData({
  DocumentReference? idEmpleado,
  DocumentReference? idCapacitacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idEmpleado': idEmpleado,
      'idCapacitacion': idCapacitacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class CapacitacionesEmpleadoRecordDocumentEquality
    implements Equality<CapacitacionesEmpleadoRecord> {
  const CapacitacionesEmpleadoRecordDocumentEquality();

  @override
  bool equals(
      CapacitacionesEmpleadoRecord? e1, CapacitacionesEmpleadoRecord? e2) {
    return e1?.idEmpleado == e2?.idEmpleado &&
        e1?.idCapacitacion == e2?.idCapacitacion;
  }

  @override
  int hash(CapacitacionesEmpleadoRecord? e) =>
      const ListEquality().hash([e?.idEmpleado, e?.idCapacitacion]);

  @override
  bool isValidKey(Object? o) => o is CapacitacionesEmpleadoRecord;
}
