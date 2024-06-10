import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SolicitudesPromocionRecord extends FirestoreRecord {
  SolicitudesPromocionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "puesto" field.
  DocumentReference? _puesto;
  DocumentReference? get puesto => _puesto;
  bool hasPuesto() => _puesto != null;

  // "empleado" field.
  DocumentReference? _empleado;
  DocumentReference? get empleado => _empleado;
  bool hasEmpleado() => _empleado != null;

  void _initializeFields() {
    _puesto = snapshotData['puesto'] as DocumentReference?;
    _empleado = snapshotData['empleado'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('solicitudesPromocion');

  static Stream<SolicitudesPromocionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => SolicitudesPromocionRecord.fromSnapshot(s));

  static Future<SolicitudesPromocionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SolicitudesPromocionRecord.fromSnapshot(s));

  static SolicitudesPromocionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolicitudesPromocionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolicitudesPromocionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolicitudesPromocionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolicitudesPromocionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolicitudesPromocionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolicitudesPromocionRecordData({
  DocumentReference? puesto,
  DocumentReference? empleado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'puesto': puesto,
      'empleado': empleado,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolicitudesPromocionRecordDocumentEquality
    implements Equality<SolicitudesPromocionRecord> {
  const SolicitudesPromocionRecordDocumentEquality();

  @override
  bool equals(SolicitudesPromocionRecord? e1, SolicitudesPromocionRecord? e2) {
    return e1?.puesto == e2?.puesto && e1?.empleado == e2?.empleado;
  }

  @override
  int hash(SolicitudesPromocionRecord? e) =>
      const ListEquality().hash([e?.puesto, e?.empleado]);

  @override
  bool isValidKey(Object? o) => o is SolicitudesPromocionRecord;
}
