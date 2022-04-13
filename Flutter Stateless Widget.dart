#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end

import 'package:flutter/material.dart';

class $classname extends StatelessWidget {

    // TODO: add state variables, methods and constructor params
    $classname();
    
    @override
    Widget build(BuildContext context) {
        // TODO: add widget build method
        return null;
    }

}