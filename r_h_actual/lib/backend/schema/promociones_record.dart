import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PromocionesRecord extends FirestoreRecord {
  PromocionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombrePuesto" field.
  String? _nombrePuesto;
  String get nombrePuesto => _nombrePuesto ?? '';
  bool hasNombrePuesto() => _nombrePuesto != null;

  // "requisitos" field.
  String? _requisitos;
  String get requisitos => _requisitos ?? '';
  bool hasRequisitos() => _requisitos != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fecha_publicacion" field.
  DateTime? _fechaPublicacion;
  DateTime? get fechaPublicacion => _fechaPublicacion;
  bool hasFechaPublicacion() => _fechaPublicacion != null;

  // "fecha_cierre" field.
  DateTime? _fechaCierre;
  DateTime? get fechaCierre => _fechaCierre;
  bool hasFechaCierre() => _fechaCierre != null;

  void _initializeFields() {
    _nombrePuesto = snapshotData['nombrePuesto'] as String?;
    _requisitos = snapshotData['requisitos'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fechaPublicacion = snapshotData['fecha_publicacion'] as DateTime?;
    _fechaCierre = snapshotData['fecha_cierre'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promociones');

  static Stream<PromocionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromocionesRecord.fromSnapshot(s));

  static Future<PromocionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromocionesRecord.fromSnapshot(s));

  static PromocionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromocionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromocionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromocionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromocionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromocionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromocionesRecordData({
  String? nombrePuesto,
  String? requisitos,
  String? descripcion,
  DateTime? fechaPublicacion,
  DateTime? fechaCierre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombrePuesto': nombrePuesto,
      'requisitos': requisitos,
      'descripcion': descripcion,
      'fecha_publicacion': fechaPublicacion,
      'fecha_cierre': fechaCierre,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromocionesRecordDocumentEquality implements Equality<PromocionesRecord> {
  const PromocionesRecordDocumentEquality();

  @override
  bool equals(PromocionesRecord? e1, PromocionesRecord? e2) {
    return e1?.nombrePuesto == e2?.nombrePuesto &&
        e1?.requisitos == e2?.requisitos &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechaPublicacion == e2?.fechaPublicacion &&
        e1?.fechaCierre == e2?.fechaCierre;
  }

  @override
  int hash(PromocionesRecord? e) => const ListEquality().hash([
        e?.nombrePuesto,
        e?.requisitos,
        e?.descripcion,
        e?.fechaPublicacion,
        e?.fechaCierre
      ]);

  @override
  bool isValidKey(Object? o) => o is PromocionesRecord;
}
