import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DepartamentoRecord extends FirestoreRecord {
  DepartamentoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "jefatura" field.
  String? _jefatura;
  String get jefatura => _jefatura ?? '';
  bool hasJefatura() => _jefatura != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _jefatura = snapshotData['jefatura'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('departamento');

  static Stream<DepartamentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DepartamentoRecord.fromSnapshot(s));

  static Future<DepartamentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DepartamentoRecord.fromSnapshot(s));

  static DepartamentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DepartamentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DepartamentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DepartamentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DepartamentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DepartamentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDepartamentoRecordData({
  String? nombre,
  String? jefatura,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'jefatura': jefatura,
    }.withoutNulls,
  );

  return firestoreData;
}

class DepartamentoRecordDocumentEquality
    implements Equality<DepartamentoRecord> {
  const DepartamentoRecordDocumentEquality();

  @override
  bool equals(DepartamentoRecord? e1, DepartamentoRecord? e2) {
    return e1?.nombre == e2?.nombre && e1?.jefatura == e2?.jefatura;
  }

  @override
  int hash(DepartamentoRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.jefatura]);

  @override
  bool isValidKey(Object? o) => o is DepartamentoRecord;
}
