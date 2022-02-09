#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end

import 'package:flutter/material.dart';

class $classname extends StatefulWidget {

    @override
    _${classname}State createState() => new _${classname}State();

}

class _${classname}State extends State<$classname> {
    // TODO: add state variables and methods
    
    @override
    Widget build(BuildContext context) {
        // TODO: add widget build method
        return null;
    }
}