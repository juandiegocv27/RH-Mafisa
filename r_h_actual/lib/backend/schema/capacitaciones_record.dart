import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CapacitacionesRecord extends FirestoreRecord {
  CapacitacionesRecord._(
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

  // "fecha_iniciacion" field.
  String? _fechaIniciacion;
  String get fechaIniciacion => _fechaIniciacion ?? '';
  bool hasFechaIniciacion() => _fechaIniciacion != null;

  // "fecha_finalizacion" field.
  String? _fechaFinalizacion;
  String get fechaFinalizacion => _fechaFinalizacion ?? '';
  bool hasFechaFinalizacion() => _fechaFinalizacion != null;

  // "idEmpleado" field.
  List<DocumentReference>? _idEmpleado;
  List<DocumentReference> get idEmpleado => _idEmpleado ?? const [];
  bool hasIdEmpleado() => _idEmpleado != null;

  // "idEmpleadoo" field.
  DocumentReference? _idEmpleadoo;
  DocumentReference? get idEmpleadoo => _idEmpleadoo;
  bool hasIdEmpleadoo() => _idEmpleadoo != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _fechaIniciacion = snapshotData['fecha_iniciacion'] as String?;
    _fechaFinalizacion = snapshotData['fecha_finalizacion'] as String?;
    _idEmpleado = getDataList(snapshotData['idEmpleado']);
    _idEmpleadoo = snapshotData['idEmpleadoo'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('capacitaciones');

  static Stream<CapacitacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CapacitacionesRecord.fromSnapshot(s));

  static Future<CapacitacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CapacitacionesRecord.fromSnapshot(s));

  static CapacitacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CapacitacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CapacitacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CapacitacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CapacitacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CapacitacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCapacitacionesRecordData({
  String? nombre,
  String? descripcion,
  String? tipo,
  String? fechaIniciacion,
  String? fechaFinalizacion,
  DocumentReference? idEmpleadoo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'tipo': tipo,
      'fecha_iniciacion': fechaIniciacion,
      'fecha_finalizacion': fechaFinalizacion,
      'idEmpleadoo': idEmpleadoo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CapacitacionesRecordDocumentEquality
    implements Equality<CapacitacionesRecord> {
  const CapacitacionesRecordDocumentEquality();

  @override
  bool equals(CapacitacionesRecord? e1, CapacitacionesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.tipo == e2?.tipo &&
        e1?.fechaIniciacion == e2?.fechaIniciacion &&
        e1?.fechaFinalizacion == e2?.fechaFinalizacion &&
        listEquality.equals(e1?.idEmpleado, e2?.idEmpleado) &&
        e1?.idEmpleadoo == e2?.idEmpleadoo;
  }

  @override
  int hash(CapacitacionesRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.tipo,
        e?.fechaIniciacion,
        e?.fechaFinalizacion,
        e?.idEmpleado,
        e?.idEmpleadoo
      ]);

  @override
  bool isValidKey(Object? o) => o is CapacitacionesRecord;
}
