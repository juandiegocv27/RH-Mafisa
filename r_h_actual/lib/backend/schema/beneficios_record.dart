import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BeneficiosRecord extends FirestoreRecord {
  BeneficiosRecord._(
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

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('beneficios');

  static Stream<BeneficiosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BeneficiosRecord.fromSnapshot(s));

  static Future<BeneficiosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BeneficiosRecord.fromSnapshot(s));

  static BeneficiosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BeneficiosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BeneficiosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BeneficiosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BeneficiosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BeneficiosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBeneficiosRecordData({
  String? nombre,
  String? descripcion,
  String? tipo,
  int? precio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'tipo': tipo,
      'precio': precio,
    }.withoutNulls,
  );

  return firestoreData;
}

class BeneficiosRecordDocumentEquality implements Equality<BeneficiosRecord> {
  const BeneficiosRecordDocumentEquality();

  @override
  bool equals(BeneficiosRecord? e1, BeneficiosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.tipo == e2?.tipo &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(BeneficiosRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.descripcion, e?.tipo, e?.precio]);

  @override
  bool isValidKey(Object? o) => o is BeneficiosRecord;
}
