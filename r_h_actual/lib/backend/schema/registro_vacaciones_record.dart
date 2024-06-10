import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroVacacionesRecord extends FirestoreRecord {
  RegistroVacacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id_vacaciones" field.
  DocumentReference? _idVacaciones;
  DocumentReference? get idVacaciones => _idVacaciones;
  bool hasIdVacaciones() => _idVacaciones != null;

  // "diasTomados" field.
  int? _diasTomados;
  int get diasTomados => _diasTomados ?? 0;
  bool hasDiasTomados() => _diasTomados != null;

  // "id_empleado" field.
  DocumentReference? _idEmpleado;
  DocumentReference? get idEmpleado => _idEmpleado;
  bool hasIdEmpleado() => _idEmpleado != null;

  // "fecha_creacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _idVacaciones = snapshotData['id_vacaciones'] as DocumentReference?;
    _diasTomados = castToType<int>(snapshotData['diasTomados']);
    _idEmpleado = snapshotData['id_empleado'] as DocumentReference?;
    _fechaCreacion = snapshotData['fecha_creacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registroVacaciones');

  static Stream<RegistroVacacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroVacacionesRecord.fromSnapshot(s));

  static Future<RegistroVacacionesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistroVacacionesRecord.fromSnapshot(s));

  static RegistroVacacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroVacacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroVacacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroVacacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroVacacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroVacacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroVacacionesRecordData({
  DocumentReference? idVacaciones,
  int? diasTomados,
  DocumentReference? idEmpleado,
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_vacaciones': idVacaciones,
      'diasTomados': diasTomados,
      'id_empleado': idEmpleado,
      'fecha_creacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroVacacionesRecordDocumentEquality
    implements Equality<RegistroVacacionesRecord> {
  const RegistroVacacionesRecordDocumentEquality();

  @override
  bool equals(RegistroVacacionesRecord? e1, RegistroVacacionesRecord? e2) {
    return e1?.idVacaciones == e2?.idVacaciones &&
        e1?.diasTomados == e2?.diasTomados &&
        e1?.idEmpleado == e2?.idEmpleado &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(RegistroVacacionesRecord? e) => const ListEquality()
      .hash([e?.idVacaciones, e?.diasTomados, e?.idEmpleado, e?.fechaCreacion]);

  @override
  bool isValidKey(Object? o) => o is RegistroVacacionesRecord;
}
