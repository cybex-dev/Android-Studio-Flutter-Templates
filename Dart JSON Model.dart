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

    $classname();

    factory $classname#[[.fromJson(Map<String, dynamic> json) => _$]]#${classname}FromJson(json);

    #[[Map<String, dynamic> toJson() => _$]]#${classname}ToJson(this);
}