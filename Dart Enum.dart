#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end
#set( $varname = $classname.substring(0, 1).toLowerCase() + $classname.substring(1) )

enum ${classname} {
    First
}

extension ${classname}Ext on ${classname} {
  static const enums = {
    ${classname}.First: 'first',
  };
  
  String string() {
    return enums[this] ?? "";
  }
  
  static String asString(${classname} ${varname}) {
    return enums[${varname}] ?? "";
  }

  static ${classname} parse(String _mode) {
    if(_mode == "") {
      return ${classname}.First;
    }
    return enums.entries.where((element) => element.value.toLowerCase() == _mode.toLowerCase()).first.key;
  }
  
  static List<String> asStringList(List<${classname}> list) {
    return list.map(${classname}Ext.asString).toList();
  }

  static List<${classname}> parseList(List<String> list) {
    return list.map(${classname}Ext.parse).toList();
  }
}