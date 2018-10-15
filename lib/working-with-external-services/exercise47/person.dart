import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'person.jser.dart';

class Person {
  final String name;
  final String craft;

  Person({this.name, this.craft}); 
}

@GenSerializer()
class PersonSerializer extends Serializer<Person>
  with _$PersonSerializer {}