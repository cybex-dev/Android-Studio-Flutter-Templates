#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end
#set( $smallLetterClassName = $classname.substring(0, 1).toLowerCase() + $classname.substring(1))

import 'package:firebase_database/firebase_database.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// This allows the `${classname}` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part #[[']]#$NAME#[[.g.dart']]#;

@JsonSerializable(explicitToJson: true)
class $classname extends Object {

    // TODO: add class properties and constructor parameters
    $classname();
    
    /// A necessary factory constructor for creating a new User instance
    /// from a map. Pass the map to the generated `_#[[$]]#${classname}FromJson()` constructor.
    /// The constructor is named after the source class, in this case, ${classname}.
    factory $classname#[[.fromJson(Map<String, dynamic> json) => _$]]#${classname}FromJson(json);
        
    /// `toJson` is the convention for a class to declare support for serialization
    /// to JSON. The implementation simply calls the private, generated
    /// helper method `_#[[$]]#${classname}ToJson`.
    #[[Map<String, dynamic> toJson() => _$]]#${classname}ToJson(this);
    
    /// Firebase fromDocumentSnapshot can be used with `withConverter(from ...)
    factory $classname#[[.fromDocumentSnapshot({required DocumentSnapshot<Map<String, dynamic>> doc}) => ]]#$classname#[[.fromJson(doc.data() ?? {});]]#
    
    /// Firebase toDocumentSnapshot can be used with `withConverter(to ...)
    factory $classname#[[.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc, SnapshotOptions? options) => ]]#$classname#[[.fromJson(doc.data() ?? {});]]#
    
    /// Used with @JsonSerializable & @JsonKey(toJson: ${classname}.${smallLetterClassName}ToJson)
    static Map<String, dynamic> ${smallLetterClassName}ToJson(${classname} ${smallLetterClassName}) {
        return ${smallLetterClassName}.toJson();
    }
    
    /// Firebase Realtime Database converter onValue stream
    factory $classname#[[.fromDynamicJsonMap({required DataSnapshot snapshot})]]# {
        var snapshotData = snapshot.value as Map;
        var map = snapshotData.map((key, value) => MapEntry<String, dynamic>(key.toString(), value));
        return ${classname}.fromJson(map);
    }
    
    /// Used with @JsonSerializable & @JsonKey(fromJson: ${classname}.jsonTo${classname})
    static ${classname} jsonTo${classname}(Map<String, dynamic> map) {
        return ${classname}.fromJson(map);
    }
}