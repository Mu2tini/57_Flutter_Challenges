import 'package:exercises_57_challenges/working-with-external-services/exercise47/person.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'space_info.jser.dart';

class SpaceInfo {

  final List<Person> people;

  SpaceInfo({this.people}); 

  // factory SpaceInfo.fromJson(Map<String, dynamic> json){
  //   return SpaceInfo(name: json['name'], craft: json['craft']);
  // }
}

@GenSerializer()
class SpaceInfoSerializer extends Serializer<SpaceInfo>
  with _$SpaceInfoSerializer {}
