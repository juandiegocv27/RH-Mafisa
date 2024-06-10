import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class BeneficiosEmpleadoRecord extends FirestoreRecord {
  BeneficiosEmpleadoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Beneficio" field.
  String? _beneficio;
  String get beneficio => _beneficio ?? '';
  bool hasBeneficio() => _beneficio != null;

  // "idEmpleado" field.
  DocumentReference? _idEmpleado;
  DocumentReference? get idEmpleado => _idEmpleado;
  bool hasIdEmpleado() => _idEmpleado != null;

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _beneficio = snapshotData['Beneficio'] as String?;
    _idEmpleado = snapshotData['idEmpleado'] as DocumentReference?;
    _estado = snapshotData['Estado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('beneficiosEmpleado');

  static Stream<BeneficiosEmpleadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BeneficiosEmpleadoRecord.fromSnapshot(s));

  static Future<BeneficiosEmpleadoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BeneficiosEmpleadoRecord.fromSnapshot(s));

  static BeneficiosEmpleadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BeneficiosEmpleadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BeneficiosEmpleadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BeneficiosEmpleadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BeneficiosEmpleadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BeneficiosEmpleadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBeneficiosEmpleadoRecordData({
  String? beneficio,
  DocumentReference? idEmpleado,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Beneficio': beneficio,
      'idEmpleado': idEmpleado,
      'Estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class BeneficiosEmpleadoRecordDocumentEquality
    implements Equality<BeneficiosEmpleadoRecord> {
  const BeneficiosEmpleadoRecordDocumentEquality();

  @override
  bool equals(BeneficiosEmpleadoRecord? e1, BeneficiosEmpleadoRecord? e2) {
    return e1?.beneficio == e2?.beneficio &&
        e1?.idEmpleado == e2?.idEmpleado &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(BeneficiosEmpleadoRecord? e) =>
      const ListEquality().hash([e?.beneficio, e?.idEmpleado, e?.estado]);

  @override
  bool isValidKey(Object? o) => o is BeneficiosEmpleadoRecord;
}
