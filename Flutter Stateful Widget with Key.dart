#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end
#set( $keyname = $classname.substring(0, 1).toLowerCase() + $classname.substring(1))

import 'package:flutter/material.dart';

class $classname extends StatefulWidget {
    @override
    _${classname}State createState() => new _${classname}State();
}

class _${classname}State extends State<$classname> {   
    final ${keyname}Key = GlobalKey<>();
    
    @override
    Widget build(BuildContext context) {
        return Widget(
            key: ${keyname}Key,
        );
    }
}