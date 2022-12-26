#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#set( $_route = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
    #set( $_route = $_route + "/" + $namepart)
#end
#set( $keyname = $classname.substring(0, 1).toLowerCase() + $classname.substring(1))
#set( $argsname = ${classname} + "Args" )

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class $argsname {
    const $argsname(); 
}

class $classname extends StatelessWidget {

    static const String name = "${_route}";

    static GoRoute goRoute({${argsname} arguments = const ${argsname}(), String? title}) =>
        GoRoute(name: title, path: name, builder: (context, state) => $classname(arguments: arguments));
    
    static Route route({${argsname} arguments = const ${argsname}(), String? title}) =>
        CupertinoPageRoute(builder: (_) => ${classname}(arguments: arguments), title: title, settings: RouteSettings(name: name, arguments: arguments));
    
    static Page page({${argsname} arguments = const ${argsname}(), String? title}) =>
        CupertinoPage(child: const ${classname}(arguments: ${argsname}()), title: title, name: name, arguments: arguments);

    final $argsname arguments;
  
    const ${classname}({Key? key, required this.arguments}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
        return _Page();
    }
}

class _Page extends StatelessWidget {  
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: ,
        );
    }
}