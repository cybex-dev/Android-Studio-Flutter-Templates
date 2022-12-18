#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end
#set( $smallLetterClassName = $classname.substring(0, 1).toLowerCase() + $classname.substring(1))

import 'package:firebase_database/firebase_database.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part #[[']]#$NAME#[[.g.dart']]#;

@JsonSerializable(explicitToJson: true)
class $classname extends Equatable {

    $classname();

    factory $classname#[[.fromJson(Map<String, dynamic> json) => _$]]#${classname}FromJson(json);

    #[[Map<String, dynamic> toJson() => _$]]#${classname}ToJson(this);

    static Map<String, dynamic> ${smallLetterClassName}ToJson(${classname} ${smallLetterClassName}) => ${smallLetterClassName}.toJson();

    factory $classname#[[.fromDynamicJsonMap({required DataSnapshot snapshot})]]# {
        if (snapshot.value == null) {
            return $classname.empty();
        }
        var snapshotData = snapshot.value as Map;
        var map = snapshotData.map((key, value) => MapEntry<String, dynamic>(key.toString(), value));
        return ${classname}.fromJson(map);
    }

    static ${classname} empty() => ${classname}();

    @override
    List<Object?> get props => [];

    ${classname} copyWith() {
        return ${classname}();
    }
}