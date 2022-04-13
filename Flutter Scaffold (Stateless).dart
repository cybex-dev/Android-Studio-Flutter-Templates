#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end
#set( $keyname = $classname.substring(0, 1).toLowerCase() + $classname.substring(1))
#set( $argsname = ${classname} + "Args" )

import 'package:flutter/material.dart';

class $argsname {
    const $argsname(); 
}

class $classname extends StatelessWidget {
    final $argsname arguments;
  
    const ${classname}({Key? key, this.arguments = const $argsname()}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: ,
        );
    }
}