// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_info.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$SpaceInfoSerializer implements Serializer<SpaceInfo> {
  Serializer<Person> __personSerializer;
  Serializer<Person> get _personSerializer =>
      __personSerializer ??= new PersonSerializer();
  @override
  Map<String, dynamic> toMap(SpaceInfo model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(
        ret,
        'people',
        codeIterable(
            model.people, (val) => _personSerializer.toMap(val as Person)));
    return ret;
  }

  @override
  SpaceInfo fromMap(Map map) {
    if (map == null) return null;
    final obj = new SpaceInfo(
        people: codeIterable<Person>(map['people'] as Iterable,
                (val) => _personSerializer.fromMap(val as Map)) ??
            getJserDefault('people'));
    return obj;
  }
}
