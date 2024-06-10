import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacacionesRecord extends FirestoreRecord {
  VacacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fecha_inicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "fecha_fin" field.
  DateTime? _fechaFin;
  DateTime? get fechaFin => _fechaFin;
  bool hasFechaFin() => _fechaFin != null;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  bool hasMotivo() => _motivo != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "id_empleado" field.
  DocumentReference? _idEmpleado;
  DocumentReference? get idEmpleado => _idEmpleado;
  bool hasIdEmpleado() => _idEmpleado != null;

  // "cantidad_dias" field.
  int? _cantidadDias;
  int get cantidadDias => _cantidadDias ?? 0;
  bool hasCantidadDias() => _cantidadDias != null;

  void _initializeFields() {
    _fechaInicio = snapshotData['fecha_inicio'] as DateTime?;
    _fechaFin = snapshotData['fecha_fin'] as DateTime?;
    _motivo = snapshotData['motivo'] as String?;
    _estado = snapshotData['estado'] as String?;
    _idEmpleado = snapshotData['id_empleado'] as DocumentReference?;
    _cantidadDias = castToType<int>(snapshotData['cantidad_dias']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vacaciones');

  static Stream<VacacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VacacionesRecord.fromSnapshot(s));

  static Future<VacacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VacacionesRecord.fromSnapshot(s));

  static VacacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VacacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VacacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VacacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VacacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VacacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVacacionesRecordData({
  DateTime? fechaInicio,
  DateTime? fechaFin,
  String? motivo,
  String? estado,
  DocumentReference? idEmpleado,
  int? cantidadDias,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha_inicio': fechaInicio,
      'fecha_fin': fechaFin,
      'motivo': motivo,
      'estado': estado,
      'id_empleado': idEmpleado,
      'cantidad_dias': cantidadDias,
    }.withoutNulls,
  );

  return firestoreData;
}

class VacacionesRecordDocumentEquality implements Equality<VacacionesRecord> {
  const VacacionesRecordDocumentEquality();

  @override
  bool equals(VacacionesRecord? e1, VacacionesRecord? e2) {
    return e1?.fechaInicio == e2?.fechaInicio &&
        e1?.fechaFin == e2?.fechaFin &&
        e1?.motivo == e2?.motivo &&
        e1?.estado == e2?.estado &&
        e1?.idEmpleado == e2?.idEmpleado &&
        e1?.cantidadDias == e2?.cantidadDias;
  }

  @override
  int hash(VacacionesRecord? e) => const ListEquality().hash([
        e?.fechaInicio,
        e?.fechaFin,
        e?.motivo,
        e?.estado,
        e?.idEmpleado,
        e?.cantidadDias
      ]);

  @override
  bool isValidKey(Object? o) => o is VacacionesRecord;
}
