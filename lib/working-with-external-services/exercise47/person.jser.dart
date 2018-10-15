// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$PersonSerializer implements Serializer<Person> {
  @override
  Map<String, dynamic> toMap(Person model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'name', model.name);
    setMapValue(ret, 'craft', model.craft);
    return ret;
  }

  @override
  Person fromMap(Map map) {
    if (map == null) return null;
    final obj = new Person(
        name: map['name'] as String ?? getJserDefault('name'),
        craft: map['craft'] as String ?? getJserDefault('craft'));
    return obj;
  }
}
