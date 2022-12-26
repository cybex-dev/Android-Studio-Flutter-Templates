#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end
#set( $smallLetterClassName = $classname.substring(0, 1).toLowerCase() + $classname.substring(1))

import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import #[[']]#$NAME#[[.mocks.dart']]#;

part #[[']]#$NAME#[[.g.dart']]#;

// Annotation which generates the ${classname}.mocks.dart library and the MockCat class.
@GenerateNiceMocks([MockSpec<${classname}>()])
@JsonSerializable(explicitToJson: true)
class $classname extends Equatable {
    @JsonKey(name: "id")
    final String id;

    const $classname({
        required this.id,
    });

    factory $classname#[[.fromJson(Map<String, dynamic> json) => _$]]#${classname}FromJson(json);

    #[[Map<String, dynamic> toJson() => _$]]#${classname}ToJson(this);

    factory $classname#[[.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc, SnapshotOptions? options) => ]]#$classname#[[.fromJson(doc.data() ?? {}).copyWith(id: doc.id);]]#

    static Map<String, dynamic> ${smallLetterClassName}ToJson(${classname} ${smallLetterClassName}) => ${smallLetterClassName}.toJson();

    static ${classname} jsonTo${classname}(Map<String, dynamic> map) => ${classname}.fromJson(map);

    static List<${classname}> jsonTo${classname}List(List<Map<String, dynamic>>? map) => (map ?? []).map((e) => ${classname}.fromJson(e)).toList();

    static List<Map<String, dynamic>> ${smallLetterClassName}ListToJson(List<${classname}> list) => list.map((e) => e.toJson()).toList();

    static Map<String, Object?> toFirestore(${classname} value, SetOptions? setOptions) => value.toJson();

    static ${classname} empty() => const ${classname}(id: '');

    @override
    List<Object?> get props => [id];

    ${classname} copyWith({
        String? id,
    }) {
        return ${classname}(
            id: id ?? this.id,
        );
    }
}