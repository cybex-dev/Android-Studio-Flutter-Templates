#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end
#set( $varname = $classname.substring(0, 1).toLowerCase() + $classname.substring(1) )

@JsonEnum(valueField: "${$varname}")
enum ${classname} {
  // @JsonValue("user")
  // user("user"),

  final String key;

  const ${classname}(this.key);

  static ${classname} parse(String key) => ${classname}.values.where((element) => element.mode.toLowerCase() == value.toLowerCase()).first;

  static String asString(${classname} key) => key.key;
}