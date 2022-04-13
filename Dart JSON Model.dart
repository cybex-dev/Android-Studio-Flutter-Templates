#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end

import 'package:json_annotation/json_annotation.dart';

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
}