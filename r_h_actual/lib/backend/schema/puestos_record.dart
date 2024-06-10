import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PuestosRecord extends FirestoreRecord {
  PuestosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "id_departamento" field.
  DocumentReference? _idDepartamento;
  DocumentReference? get idDepartamento => _idDepartamento;
  bool hasIdDepartamento() => _idDepartamento != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _idDepartamento = snapshotData['id_departamento'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Puestos');

  static Stream<PuestosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PuestosRecord.fromSnapshot(s));

  static Future<PuestosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PuestosRecord.fromSnapshot(s));

  static PuestosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PuestosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PuestosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PuestosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PuestosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PuestosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPuestosRecordData({
  String? nombre,
  String? descripcion,
  DocumentReference? idDepartamento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'id_departamento': idDepartamento,
    }.withoutNulls,
  );

  return firestoreData;
}

class PuestosRecordDocumentEquality implements Equality<PuestosRecord> {
  const PuestosRecordDocumentEquality();

  @override
  bool equals(PuestosRecord? e1, PuestosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.idDepartamento == e2?.idDepartamento;
  }

  @override
  int hash(PuestosRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.descripcion, e?.idDepartamento]);

  @override
  bool isValidKey(Object? o) => o is PuestosRecord;
}
