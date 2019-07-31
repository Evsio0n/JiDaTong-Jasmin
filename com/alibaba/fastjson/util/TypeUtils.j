.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/TypeUtils
.super java/lang/Object

.field public static 'compatibleWithJavaBean' Z

.field private static 'mappings' Ljava/util/concurrent/ConcurrentMap; signature "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"

.method static <clinit>()V
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
iconst_0
putstatic com/alibaba/fastjson/util/TypeUtils/compatibleWithJavaBean Z
L0:
ldc "fastjson.compatibleWithJavaBean"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 0
ldc "true"
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iconst_1
putstatic com/alibaba/fastjson/util/TypeUtils/compatibleWithJavaBean Z
L1:
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
invokestatic com/alibaba/fastjson/util/TypeUtils/addBaseClassMappings()V
return
L3:
ldc "false"
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
iconst_0
putstatic com/alibaba/fastjson/util/TypeUtils/compatibleWithJavaBean Z
L4:
goto L1
L2:
astore 0
goto L1
.limit locals 1
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static addBaseClassMappings()V
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "byte"
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "short"
getstatic java/lang/Short/TYPE Ljava/lang/Class;
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "int"
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "long"
getstatic java/lang/Long/TYPE Ljava/lang/Class;
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "float"
getstatic java/lang/Float/TYPE Ljava/lang/Class;
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "double"
getstatic java/lang/Double/TYPE Ljava/lang/Class;
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "boolean"
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "char"
getstatic java/lang/Character/TYPE Ljava/lang/Class;
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "[byte"
ldc [B
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "[short"
ldc [S
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "[int"
ldc [I
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "[long"
ldc [J
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "[float"
ldc [F
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "[double"
ldc [D
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "[boolean"
ldc [Z
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc "[char"
ldc [C
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
ldc java/util/HashMap
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc java/util/HashMap
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 0
.limit stack 3
.end method

.method public static addClassMapping(Ljava/lang/String;Ljava/lang/Class;)V
.signature "(Ljava/lang/String;Ljava/lang/Class<*>;)V"
aload 0
astore 2
aload 0
ifnonnull L0
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
astore 2
L0:
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
aload 2
aload 1
invokeinterface java/util/concurrent/ConcurrentMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 3
.limit stack 3
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Object;Ljava/lang/Class<TT;>;Lcom/alibaba/fastjson/parser/ParserConfig;)TT;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnonnull L3
aconst_null
astore 4
L4:
aload 4
areturn
L3:
aload 1
ifnonnull L5
new java/lang/IllegalArgumentException
dup
ldc "clazz is null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 0
astore 4
aload 1
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
if_acmpeq L4
aload 0
instanceof java/util/Map
ifeq L6
aload 0
astore 4
aload 1
ldc java/util/Map
if_acmpeq L4
aload 0
checkcast java/util/Map
astore 5
aload 1
ldc java/lang/Object
if_acmpne L7
aload 0
astore 4
aload 5
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L4
L7:
aload 0
checkcast java/util/Map
aload 1
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
L6:
aload 1
invokevirtual java/lang/Class/isArray()Z
ifeq L8
aload 0
instanceof java/util/Collection
ifeq L8
aload 0
checkcast java/util/Collection
astore 4
iconst_0
istore 3
aload 1
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
aload 4
invokeinterface java/util/Collection/size()I 0
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
astore 0
aload 4
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 4
L9:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 0
iload 3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
aload 1
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
invokestatic java/lang/reflect/Array/set(Ljava/lang/Object;ILjava/lang/Object;)V
iload 3
iconst_1
iadd
istore 3
goto L9
L10:
aload 0
areturn
L8:
aload 0
astore 4
aload 1
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L4
aload 1
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpeq L11
aload 1
ldc java/lang/Boolean
if_acmpne L12
L11:
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
areturn
L12:
aload 1
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpeq L13
aload 1
ldc java/lang/Byte
if_acmpne L14
L13:
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
areturn
L14:
aload 1
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpeq L15
aload 1
ldc java/lang/Short
if_acmpne L16
L15:
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToShort(Ljava/lang/Object;)Ljava/lang/Short;
areturn
L16:
aload 1
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpeq L17
aload 1
ldc java/lang/Integer
if_acmpne L18
L17:
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
areturn
L18:
aload 1
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpeq L19
aload 1
ldc java/lang/Long
if_acmpne L20
L19:
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToLong(Ljava/lang/Object;)Ljava/lang/Long;
areturn
L20:
aload 1
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpeq L21
aload 1
ldc java/lang/Float
if_acmpne L22
L21:
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
areturn
L22:
aload 1
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpeq L23
aload 1
ldc java/lang/Double
if_acmpne L24
L23:
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
areturn
L24:
aload 1
ldc java/lang/String
if_acmpne L25
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToString(Ljava/lang/Object;)Ljava/lang/String;
areturn
L25:
aload 1
ldc java/math/BigDecimal
if_acmpne L26
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
areturn
L26:
aload 1
ldc java/math/BigInteger
if_acmpne L27
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
areturn
L27:
aload 1
ldc java/util/Date
if_acmpne L28
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDate(Ljava/lang/Object;)Ljava/util/Date;
areturn
L28:
aload 1
ldc java/sql/Date
if_acmpne L29
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
areturn
L29:
aload 1
ldc java/sql/Timestamp
if_acmpne L30
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
areturn
L30:
aload 1
invokevirtual java/lang/Class/isEnum()Z
ifeq L31
aload 0
aload 1
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
L31:
ldc java/util/Calendar
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L32
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDate(Ljava/lang/Object;)Ljava/util/Date;
astore 2
aload 1
ldc java/util/Calendar
if_acmpne L0
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 0
L33:
aload 0
aload 2
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 0
areturn
L0:
aload 1
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast java/util/Calendar
astore 0
L1:
goto L33
L2:
astore 0
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L32:
aload 0
instanceof java/lang/String
ifeq L34
aload 0
checkcast java/lang/String
invokevirtual java/lang/String/length()I
ifne L34
aconst_null
areturn
L34:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 5
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)TT;"
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
astore 5
aload 5
ldc java/util/List
if_acmpeq L0
aload 5
ldc java/util/ArrayList
if_acmpne L1
L0:
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 3
aload 0
instanceof java/lang/Iterable
ifeq L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
checkcast java/lang/Iterable
invokeinterface java/lang/Iterable/iterator()Ljava/util/Iterator; 0
astore 4
L2:
aload 1
astore 0
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
aload 3
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L1:
aload 5
ldc java/util/Map
if_acmpeq L4
aload 5
ldc java/util/HashMap
if_acmpne L5
L4:
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 3
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_1
aaload
astore 4
aload 0
instanceof java/util/Map
ifeq L5
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 0
checkcast java/util/Map
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 0
L6:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 5
aload 1
aload 5
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
aload 3
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
aload 5
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
aload 4
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L6
L7:
aload 1
astore 0
L3:
aload 0
areturn
L5:
aload 0
instanceof java/lang/String
ifeq L8
aload 0
checkcast java/lang/String
invokevirtual java/lang/String/length()I
ifne L8
aconst_null
areturn
L8:
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
arraylength
iconst_1
if_icmpne L9
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
instanceof java/lang/reflect/WildcardType
ifeq L9
aload 0
aload 5
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
L9:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 5
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)TT;"
aload 0
ifnonnull L0
aconst_null
astore 0
L1:
aload 0
areturn
L0:
aload 1
instanceof java/lang/Class
ifeq L2
aload 0
aload 1
checkcast java/lang/Class
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
L2:
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L3
aload 0
aload 1
checkcast java/lang/reflect/ParameterizedType
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
L3:
aload 0
instanceof java/lang/String
ifeq L4
aload 0
checkcast java/lang/String
invokevirtual java/lang/String/length()I
ifne L4
aconst_null
areturn
L4:
aload 1
instanceof java/lang/reflect/TypeVariable
ifne L1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public static final castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
instanceof java/math/BigDecimal
ifeq L1
aload 0
checkcast java/math/BigDecimal
areturn
L1:
aload 0
instanceof java/math/BigInteger
ifeq L2
new java/math/BigDecimal
dup
aload 0
checkcast java/math/BigInteger
invokespecial java/math/BigDecimal/<init>(Ljava/math/BigInteger;)V
areturn
L2:
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifne L3
aconst_null
areturn
L3:
new java/math/BigDecimal
dup
aload 0
invokespecial java/math/BigDecimal/<init>(Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static final castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
instanceof java/math/BigInteger
ifeq L1
aload 0
checkcast java/math/BigInteger
areturn
L1:
aload 0
instanceof java/lang/Float
ifne L2
aload 0
instanceof java/lang/Double
ifeq L3
L2:
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/longValue()J
invokestatic java/math/BigInteger/valueOf(J)Ljava/math/BigInteger;
areturn
L3:
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifne L4
aconst_null
areturn
L4:
new java/math/BigInteger
dup
aload 0
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static final castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
iconst_1
istore 1
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
instanceof java/lang/Boolean
ifeq L1
aload 0
checkcast java/lang/Boolean
areturn
L1:
aload 0
instanceof java/lang/Number
ifeq L2
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/intValue()I
iconst_1
if_icmpne L3
L4:
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L3:
iconst_0
istore 1
goto L4
L2:
aload 0
instanceof java/lang/String
ifeq L5
aload 0
checkcast java/lang/String
astore 2
aload 2
invokevirtual java/lang/String/length()I
ifne L6
aconst_null
areturn
L6:
ldc "true"
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
getstatic java/lang/Boolean/TRUE Ljava/lang/Boolean;
areturn
L7:
ldc "false"
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
getstatic java/lang/Boolean/FALSE Ljava/lang/Boolean;
areturn
L8:
ldc "1"
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
getstatic java/lang/Boolean/TRUE Ljava/lang/Boolean;
areturn
L5:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to int, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public static final castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
aload 0
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
instanceof java/lang/Number
ifeq L2
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/byteValue()B
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
areturn
L2:
aload 0
instanceof java/lang/String
ifeq L3
aload 0
checkcast java/lang/String
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifeq L1
aload 0
invokestatic java/lang/Byte/parseByte(Ljava/lang/String;)B
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
areturn
L3:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to byte, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static final castToBytes(Ljava/lang/Object;)[B
aload 0
instanceof [B
ifeq L0
aload 0
checkcast [B
checkcast [B
areturn
L0:
aload 0
instanceof java/lang/String
ifeq L1
aload 0
checkcast java/lang/String
invokestatic com/alibaba/fastjson/util/Base64/decodeFast(Ljava/lang/String;)[B
areturn
L1:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to int, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static final castToChar(Ljava/lang/Object;)Ljava/lang/Character;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
instanceof java/lang/Character
ifeq L1
aload 0
checkcast java/lang/Character
areturn
L1:
aload 0
instanceof java/lang/String
ifeq L2
aload 0
checkcast java/lang/String
astore 1
aload 1
invokevirtual java/lang/String/length()I
ifne L3
aconst_null
areturn
L3:
aload 1
invokevirtual java/lang/String/length()I
iconst_1
if_icmpeq L4
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to byte, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 1
iconst_0
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/valueOf(C)Ljava/lang/Character;
areturn
L2:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to byte, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public static final castToDate(Ljava/lang/Object;)Ljava/util/Date;
.catch java/text/ParseException from L0 to L1 using L2
aload 0
ifnonnull L3
aconst_null
areturn
L3:
aload 0
instanceof java/util/Calendar
ifeq L4
aload 0
checkcast java/util/Calendar
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
areturn
L4:
aload 0
instanceof java/util/Date
ifeq L5
aload 0
checkcast java/util/Date
areturn
L5:
ldc2_w -1L
lstore 1
aload 0
instanceof java/lang/Number
ifeq L6
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/longValue()J
lstore 1
L6:
aload 0
instanceof java/lang/String
ifeq L7
aload 0
checkcast java/lang/String
astore 3
aload 3
bipush 45
invokevirtual java/lang/String/indexOf(I)I
iconst_m1
if_icmpeq L8
aload 3
invokevirtual java/lang/String/length()I
getstatic com/alibaba/fastjson/JSON/DEFFAULT_DATE_FORMAT Ljava/lang/String;
invokevirtual java/lang/String/length()I
if_icmpne L9
getstatic com/alibaba/fastjson/JSON/DEFFAULT_DATE_FORMAT Ljava/lang/String;
astore 0
L10:
new java/text/SimpleDateFormat
dup
aload 0
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 0
L0:
aload 0
aload 3
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 0
L1:
aload 0
areturn
L9:
aload 3
invokevirtual java/lang/String/length()I
bipush 10
if_icmpne L11
ldc "yyyy-MM-dd"
astore 0
goto L10
L11:
aload 3
invokevirtual java/lang/String/length()I
ldc "yyyy-MM-dd HH:mm:ss"
invokevirtual java/lang/String/length()I
if_icmpne L12
ldc "yyyy-MM-dd HH:mm:ss"
astore 0
goto L10
L12:
ldc "yyyy-MM-dd HH:mm:ss.SSS"
astore 0
goto L10
L2:
astore 0
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to Date, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L8:
aload 3
invokevirtual java/lang/String/length()I
ifne L13
aconst_null
areturn
L13:
aload 3
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 1
L7:
lload 1
lconst_0
lcmp
ifge L14
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to Date, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L14:
new java/util/Date
dup
lload 1
invokespecial java/util/Date/<init>(J)V
areturn
.limit locals 4
.limit stack 4
.end method

.method public static final castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
aload 0
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
instanceof java/lang/Number
ifeq L2
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/doubleValue()D
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
areturn
L2:
aload 0
instanceof java/lang/String
ifeq L3
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifeq L1
aload 0
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
areturn
L3:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to double, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static final castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Object;Ljava/lang/Class<TT;>;Lcom/alibaba/fastjson/parser/ParserConfig;)TT;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
L0:
aload 0
instanceof java/lang/String
ifeq L4
aload 0
checkcast java/lang/String
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifne L3
L1:
aconst_null
areturn
L3:
aload 1
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
areturn
L4:
aload 0
instanceof java/lang/Number
ifeq L8
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/intValue()I
istore 4
aload 1
ldc "values"
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aconst_null
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast [Ljava/lang/Object;
checkcast [Ljava/lang/Object;
astore 0
aload 0
arraylength
istore 5
L5:
iconst_0
istore 3
L9:
iload 3
iload 5
if_icmpge L8
L6:
aload 0
iload 3
aaload
checkcast java/lang/Enum
astore 2
aload 2
invokevirtual java/lang/Enum/ordinal()I
istore 6
L7:
iload 6
iload 4
if_icmpeq L10
iload 3
iconst_1
iadd
istore 3
goto L9
L2:
astore 0
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L8:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L10:
aload 2
areturn
.limit locals 7
.limit stack 4
.end method

.method public static final castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
aload 0
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
instanceof java/lang/Number
ifeq L2
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/floatValue()F
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
areturn
L2:
aload 0
instanceof java/lang/String
ifeq L3
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifeq L1
aload 0
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
areturn
L3:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to float, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static final castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
instanceof java/lang/Integer
ifeq L1
aload 0
checkcast java/lang/Integer
areturn
L1:
aload 0
instanceof java/lang/Number
ifeq L2
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/intValue()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L2:
aload 0
instanceof java/lang/String
ifeq L3
aload 0
checkcast java/lang/String
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifne L4
aconst_null
areturn
L4:
aload 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L3:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to int, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static final castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Object;Ljava/lang/Class<TT;>;)TT;"
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static final castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/lang/Class<TT;>;Lcom/alibaba/fastjson/parser/ParserConfig;)TT;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L2 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L16 to L17 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
aload 1
ldc java/lang/StackTraceElement
if_acmpne L6
L0:
aload 0
ldc "className"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 1
aload 0
ldc "methodName"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 2
aload 0
ldc "fileName"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 4
aload 0
ldc "lineNumber"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Number
astore 0
L1:
aload 0
ifnonnull L4
iconst_0
istore 3
L3:
new java/lang/StackTraceElement
dup
aload 1
aload 2
aload 4
iload 3
invokespecial java/lang/StackTraceElement/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
areturn
L4:
aload 0
invokevirtual java/lang/Number/intValue()I
istore 3
L5:
goto L3
L6:
aload 0
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
astore 4
aload 4
instanceof java/lang/String
ifeq L10
aload 4
checkcast java/lang/String
astore 4
aload 4
invokestatic com/alibaba/fastjson/util/TypeUtils/loadClass(Ljava/lang/String;)Ljava/lang/Class;
astore 5
L7:
aload 5
ifnonnull L9
L8:
new java/lang/ClassNotFoundException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " not found"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/ClassNotFoundException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
new com/alibaba/fastjson/JSONException
dup
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
aload 0
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L9:
aload 5
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L10
aload 0
aload 5
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
L10:
aload 1
invokevirtual java/lang/Class/isInterface()Z
ifeq L23
aload 0
instanceof com/alibaba/fastjson/JSONObject
ifeq L12
aload 0
checkcast com/alibaba/fastjson/JSONObject
astore 0
L11:
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getContextClassLoader()Ljava/lang/ClassLoader;
iconst_1
anewarray java/lang/Class
dup
iconst_0
aload 1
aastore
aload 0
invokestatic java/lang/reflect/Proxy/newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
areturn
L12:
new com/alibaba/fastjson/JSONObject
dup
aload 0
invokespecial com/alibaba/fastjson/JSONObject/<init>(Ljava/util/Map;)V
astore 0
L13:
goto L11
L23:
aload 2
astore 4
aload 2
ifnonnull L15
L14:
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
astore 4
L15:
aload 4
aload 1
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getFieldDeserializers(Ljava/lang/Class;)Ljava/util/Map;
astore 2
aload 1
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
astore 1
aload 1
invokevirtual java/lang/reflect/Constructor/isAccessible()Z
ifne L16
aload 1
iconst_1
invokevirtual java/lang/reflect/Constructor/setAccessible(Z)V
L16:
aload 1
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 2
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L17:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L24
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 5
aload 5
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
astore 6
aload 5
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
astore 5
aload 0
aload 6
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L17
aload 0
aload 6
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
astore 6
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/getMethod()Ljava/lang/reflect/Method;
astore 7
L18:
aload 7
ifnull L21
L19:
aload 7
aload 1
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 6
aload 7
invokevirtual java/lang/reflect/Method/getGenericParameterTypes()[Ljava/lang/reflect/Type;
iconst_0
aaload
aload 4
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L20:
goto L17
L21:
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/getField()Ljava/lang/reflect/Field;
astore 5
aload 5
aload 1
aload 6
aload 5
invokevirtual java/lang/reflect/Field/getGenericType()Ljava/lang/reflect/Type;
aload 4
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L22:
goto L17
L24:
aload 1
areturn
.limit locals 8
.limit stack 8
.end method

.method public static final castToLong(Ljava/lang/Object;)Ljava/lang/Long;
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 0
ifnonnull L3
L4:
aconst_null
areturn
L3:
aload 0
instanceof java/lang/Number
ifeq L5
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/longValue()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
L5:
aload 0
instanceof java/lang/String
ifeq L6
aload 0
checkcast java/lang/String
astore 3
aload 3
invokevirtual java/lang/String/length()I
ifeq L4
L0:
aload 3
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 1
L1:
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
L2:
astore 4
new com/alibaba/fastjson/parser/JSONScanner
dup
aload 3
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;)V
astore 4
aconst_null
astore 3
aload 4
iconst_0
invokevirtual com/alibaba/fastjson/parser/JSONScanner/scanISO8601DateIfMatch(Z)Z
ifeq L7
aload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/getCalendar()Ljava/util/Calendar;
astore 3
L7:
aload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/close()V
aload 3
ifnull L6
aload 3
invokevirtual java/util/Calendar/getTimeInMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
L6:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to long, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public static final castToShort(Ljava/lang/Object;)Ljava/lang/Short;
aload 0
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
instanceof java/lang/Number
ifeq L2
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/shortValue()S
invokestatic java/lang/Short/valueOf(S)Ljava/lang/Short;
areturn
L2:
aload 0
instanceof java/lang/String
ifeq L3
aload 0
checkcast java/lang/String
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifeq L1
aload 0
invokestatic java/lang/Short/parseShort(Ljava/lang/String;)S
invokestatic java/lang/Short/valueOf(S)Ljava/lang/Short;
areturn
L3:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to short, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static final castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
instanceof java/util/Calendar
ifeq L1
new java/sql/Date
dup
aload 0
checkcast java/util/Calendar
invokevirtual java/util/Calendar/getTimeInMillis()J
invokespecial java/sql/Date/<init>(J)V
areturn
L1:
aload 0
instanceof java/sql/Date
ifeq L2
aload 0
checkcast java/sql/Date
areturn
L2:
aload 0
instanceof java/util/Date
ifeq L3
new java/sql/Date
dup
aload 0
checkcast java/util/Date
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Date/<init>(J)V
areturn
L3:
lconst_0
lstore 1
aload 0
instanceof java/lang/Number
ifeq L4
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/longValue()J
lstore 1
L4:
aload 0
instanceof java/lang/String
ifeq L5
aload 0
checkcast java/lang/String
astore 3
aload 3
invokevirtual java/lang/String/length()I
ifne L6
aconst_null
areturn
L6:
aload 3
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 1
L5:
lload 1
lconst_0
lcmp
ifgt L7
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to Date, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L7:
new java/sql/Date
dup
lload 1
invokespecial java/sql/Date/<init>(J)V
areturn
.limit locals 4
.limit stack 4
.end method

.method public static final castToString(Ljava/lang/Object;)Ljava/lang/String;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static final castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
instanceof java/util/Calendar
ifeq L1
new java/sql/Timestamp
dup
aload 0
checkcast java/util/Calendar
invokevirtual java/util/Calendar/getTimeInMillis()J
invokespecial java/sql/Timestamp/<init>(J)V
areturn
L1:
aload 0
instanceof java/sql/Timestamp
ifeq L2
aload 0
checkcast java/sql/Timestamp
areturn
L2:
aload 0
instanceof java/util/Date
ifeq L3
new java/sql/Timestamp
dup
aload 0
checkcast java/util/Date
invokevirtual java/util/Date/getTime()J
invokespecial java/sql/Timestamp/<init>(J)V
areturn
L3:
lconst_0
lstore 1
aload 0
instanceof java/lang/Number
ifeq L4
aload 0
checkcast java/lang/Number
invokevirtual java/lang/Number/longValue()J
lstore 1
L4:
aload 0
instanceof java/lang/String
ifeq L5
aload 0
checkcast java/lang/String
astore 3
aload 3
invokevirtual java/lang/String/length()I
ifne L6
aconst_null
areturn
L6:
aload 3
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 1
L5:
lload 1
lconst_0
lcmp
ifgt L7
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can not cast to Date, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L7:
new java/sql/Timestamp
dup
lload 1
invokespecial java/sql/Timestamp/<init>(J)V
areturn
.limit locals 4
.limit stack 4
.end method

.method public static clearClassMapping()V
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
invokeinterface java/util/concurrent/ConcurrentMap/clear()V 0
invokestatic com/alibaba/fastjson/util/TypeUtils/addBaseClassMappings()V
return
.limit locals 0
.limit stack 1
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
.signature "(Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
aload 0
aload 1
iconst_1
invokestatic com/alibaba/fastjson/util/TypeUtils/computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
.signature "(Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Z)Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
new java/util/LinkedHashMap
dup
invokespecial java/util/LinkedHashMap/<init>()V
astore 11
aload 0
invokevirtual java/lang/Class/getMethods()[Ljava/lang/reflect/Method;
astore 12
aload 12
arraylength
istore 5
iconst_0
istore 4
L0:
iload 4
iload 5
if_icmpge L1
aload 12
iload 4
aaload
astore 13
aload 13
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
astore 14
aload 13
invokevirtual java/lang/reflect/Method/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifeq L2
L3:
iload 4
iconst_1
iadd
istore 4
goto L0
L2:
aload 13
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
getstatic java/lang/Void/TYPE Ljava/lang/Class;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L3
aload 13
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
arraylength
ifne L3
aload 13
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
ldc java/lang/ClassLoader
if_acmpeq L3
aload 13
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
ldc "getMetaClass"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 13
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "groovy.lang.MetaClass"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
L4:
aload 13
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Method/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 9
aload 9
astore 8
aload 9
ifnonnull L5
aload 0
aload 13
invokestatic com/alibaba/fastjson/util/TypeUtils/getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
astore 8
L5:
aload 8
ifnull L6
aload 8
invokeinterface com/alibaba/fastjson/annotation/JSONField/serialize()Z 0
ifeq L3
aload 8
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifeq L6
aload 8
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
astore 9
aload 9
astore 8
aload 1
ifnull L7
aload 1
aload 9
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 8
aload 8
ifnull L3
L7:
aload 11
aload 8
new com/alibaba/fastjson/util/FieldInfo
dup
aload 8
aload 13
aconst_null
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L3
L6:
aload 14
ldc "get"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L8
aload 14
invokevirtual java/lang/String/length()I
iconst_4
if_icmplt L3
aload 14
ldc "getClass"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 14
iconst_3
invokevirtual java/lang/String/charAt(I)C
istore 3
iload 3
invokestatic java/lang/Character/isUpperCase(C)Z
ifeq L9
getstatic com/alibaba/fastjson/util/TypeUtils/compatibleWithJavaBean Z
ifeq L10
aload 14
iconst_3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokestatic java/beans/Introspector/decapitalize(Ljava/lang/String;)Ljava/lang/String;
astore 8
L11:
aload 0
aload 8
invokestatic com/alibaba/fastjson/util/TypeUtils/isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
ifne L3
aload 0
aload 8
invokestatic com/alibaba/fastjson/parser/ParserConfig/getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 10
aload 8
astore 9
aload 10
ifnull L12
aload 10
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 15
aload 8
astore 9
aload 15
ifnull L12
aload 15
invokeinterface com/alibaba/fastjson/annotation/JSONField/serialize()Z 0
ifeq L3
aload 8
astore 9
aload 15
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifeq L12
aload 15
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
astore 8
aload 8
astore 9
aload 1
ifnull L12
aload 1
aload 8
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 9
aload 9
ifnull L3
L12:
aload 9
astore 8
aload 1
ifnull L13
aload 1
aload 9
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 8
aload 8
ifnull L3
L13:
aload 11
aload 8
new com/alibaba/fastjson/util/FieldInfo
dup
aload 8
aload 13
aload 10
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L8:
aload 14
ldc "is"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L3
aload 14
invokevirtual java/lang/String/length()I
iconst_3
if_icmplt L3
aload 14
iconst_2
invokevirtual java/lang/String/charAt(I)C
istore 3
iload 3
invokestatic java/lang/Character/isUpperCase(C)Z
ifeq L14
getstatic com/alibaba/fastjson/util/TypeUtils/compatibleWithJavaBean Z
ifeq L15
aload 14
iconst_2
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokestatic java/beans/Introspector/decapitalize(Ljava/lang/String;)Ljava/lang/String;
astore 8
L16:
aload 0
aload 8
invokestatic com/alibaba/fastjson/parser/ParserConfig/getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 9
aload 9
astore 10
aload 9
ifnonnull L17
aload 0
aload 14
invokestatic com/alibaba/fastjson/parser/ParserConfig/getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 10
L17:
aload 8
astore 9
aload 10
ifnull L18
aload 10
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 14
aload 8
astore 9
aload 14
ifnull L18
aload 14
invokeinterface com/alibaba/fastjson/annotation/JSONField/serialize()Z 0
ifeq L3
aload 8
astore 9
aload 14
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifeq L18
aload 14
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
astore 8
aload 8
astore 9
aload 1
ifnull L18
aload 1
aload 8
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 9
aload 9
ifnull L3
L18:
aload 9
astore 8
aload 1
ifnull L19
aload 1
aload 9
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 8
aload 8
ifnull L3
L19:
aload 11
aload 8
new com/alibaba/fastjson/util/FieldInfo
dup
aload 8
aload 13
aload 10
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L3
L10:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 14
iconst_3
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/toLowerCase(C)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 14
iconst_4
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
goto L11
L9:
iload 3
bipush 95
if_icmpne L20
aload 14
iconst_4
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 8
goto L11
L20:
iload 3
bipush 102
if_icmpne L3
aload 14
iconst_3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 8
goto L11
L15:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 14
iconst_2
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/toLowerCase(C)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 14
iconst_3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
goto L16
L14:
iload 3
bipush 95
if_icmpne L21
aload 14
iconst_3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 8
goto L16
L21:
iload 3
bipush 102
if_icmpne L3
aload 14
iconst_2
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 8
goto L16
L1:
aload 0
invokevirtual java/lang/Class/getFields()[Ljava/lang/reflect/Field;
astore 10
aload 10
arraylength
istore 5
iconst_0
istore 4
L22:
iload 4
iload 5
if_icmpge L23
aload 10
iload 4
aaload
astore 12
aload 12
invokevirtual java/lang/reflect/Field/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifeq L24
L25:
iload 4
iconst_1
iadd
istore 4
goto L22
L24:
aload 12
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 13
aload 12
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
astore 9
aload 9
astore 8
aload 13
ifnull L26
aload 13
invokeinterface com/alibaba/fastjson/annotation/JSONField/serialize()Z 0
ifeq L25
aload 9
astore 8
aload 13
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifeq L26
aload 13
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
astore 8
L26:
aload 8
astore 9
aload 1
ifnull L27
aload 1
aload 8
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 9
aload 9
ifnull L25
L27:
aload 11
aload 9
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifne L25
aload 11
aload 9
new com/alibaba/fastjson/util/FieldInfo
dup
aload 9
aconst_null
aload 12
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L25
L23:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
iconst_0
istore 4
aconst_null
astore 1
aload 0
ldc com/alibaba/fastjson/annotation/JSONType
invokevirtual java/lang/Class/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONType
astore 9
aload 1
astore 0
aload 9
ifnull L28
aload 9
invokeinterface com/alibaba/fastjson/annotation/JSONType/orders()[Ljava/lang/String; 0
astore 1
aload 1
ifnull L29
aload 1
arraylength
aload 11
invokeinterface java/util/Map/size()I 0
if_icmpne L29
iconst_1
istore 6
aload 1
arraylength
istore 7
iconst_0
istore 5
L30:
iload 6
istore 4
aload 1
astore 0
iload 5
iload 7
if_icmpge L28
aload 11
aload 1
iload 5
aaload
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifne L31
iconst_0
istore 4
aload 1
astore 0
L28:
iload 4
ifeq L32
aload 0
arraylength
istore 5
iconst_0
istore 4
L33:
iload 4
iload 5
if_icmpge L34
aload 8
aload 11
aload 0
iload 4
aaload
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 4
iconst_1
iadd
istore 4
goto L33
L31:
iload 5
iconst_1
iadd
istore 5
goto L30
L29:
iconst_0
istore 4
aload 1
astore 0
goto L28
L32:
aload 11
invokeinterface java/util/Map/values()Ljava/util/Collection; 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 0
L35:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L36
aload 8
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L35
L36:
iload 2
ifeq L34
aload 8
invokestatic java/util/Collections/sort(Ljava/util/List;)V
L34:
aload 8
areturn
.limit locals 16
.limit stack 7
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
.signature "(Ljava/lang/reflect/Type;)Ljava/lang/Class<*>;"
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc java/lang/Class
if_acmpne L0
aload 0
checkcast java/lang/Class
areturn
L0:
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 0
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
invokestatic com/alibaba/fastjson/util/TypeUtils/getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
areturn
L1:
ldc java/lang/Object
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
.signature "(Ljava/lang/Class<*>;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;"
aload 0
invokevirtual java/lang/Class/getInterfaces()[Ljava/lang/Class;
astore 0
aload 0
arraylength
istore 7
iconst_0
istore 2
L0:
iload 2
iload 7
if_icmpge L1
aload 0
iload 2
aaload
invokevirtual java/lang/Class/getMethods()[Ljava/lang/reflect/Method;
astore 9
aload 9
arraylength
istore 8
iconst_0
istore 3
L2:
iload 3
iload 8
if_icmpge L3
aload 9
iload 3
aaload
astore 10
aload 10
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
aload 1
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
L5:
iload 3
iconst_1
iadd
istore 3
goto L2
L4:
aload 10
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
arraylength
aload 1
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
arraylength
if_icmpne L5
iconst_1
istore 6
iconst_0
istore 4
L6:
iload 6
istore 5
iload 4
aload 10
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
arraylength
if_icmpge L7
aload 10
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
iload 4
aaload
aload 1
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
iload 4
aaload
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L8
iconst_0
istore 5
L7:
iload 5
ifeq L5
aload 10
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Method/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 10
aload 10
ifnull L5
aload 10
areturn
L8:
iload 4
iconst_1
iadd
istore 4
goto L6
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aconst_null
areturn
.limit locals 11
.limit stack 3
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
.signature "(Ljava/lang/Class<*>;Ljava/lang/String;)Z"
aload 0
ldc com/alibaba/fastjson/annotation/JSONType
invokevirtual java/lang/Class/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONType
astore 4
aload 4
ifnull L0
aload 4
invokeinterface com/alibaba/fastjson/annotation/JSONType/ignores()[Ljava/lang/String; 0
ifnull L0
aload 4
invokeinterface com/alibaba/fastjson/annotation/JSONType/ignores()[Ljava/lang/String; 0
astore 4
aload 4
arraylength
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmpge L0
aload 1
aload 4
iload 2
aaload
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L2
L3:
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
aload 0
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
ldc java/lang/Object
if_acmpeq L4
aload 0
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
ifnull L4
aload 0
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
ifne L3
L4:
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
.signature "(Ljava/lang/String;)Ljava/lang/Class<*>;"
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L9
.catch java/lang/Throwable from L10 to L11 using L9
aload 0
ifnull L12
aload 0
invokevirtual java/lang/String/length()I
ifne L13
L12:
aconst_null
astore 2
L14:
aload 2
areturn
L13:
getstatic com/alibaba/fastjson/util/TypeUtils/mappings Ljava/util/concurrent/ConcurrentMap;
aload 0
invokeinterface java/util/concurrent/ConcurrentMap/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Class
astore 1
aload 1
astore 2
aload 1
ifnonnull L14
aload 0
iconst_0
invokevirtual java/lang/String/charAt(I)C
bipush 91
if_icmpne L15
aload 0
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokestatic com/alibaba/fastjson/util/TypeUtils/loadClass(Ljava/lang/String;)Ljava/lang/Class;
iconst_0
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
areturn
L15:
aload 0
ldc "L"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L16
aload 0
ldc ";"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L16
aload 0
iconst_1
aload 0
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/alibaba/fastjson/util/TypeUtils/loadClass(Ljava/lang/String;)Ljava/lang/Class;
areturn
L16:
aload 1
astore 2
L0:
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getContextClassLoader()Ljava/lang/ClassLoader;
astore 3
L1:
aload 1
astore 2
aload 3
ifnull L7
aload 1
astore 2
L3:
aload 3
aload 0
invokevirtual java/lang/ClassLoader/loadClass(Ljava/lang/String;)Ljava/lang/Class;
astore 1
L4:
aload 1
astore 2
L5:
aload 0
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/addClassMapping(Ljava/lang/String;Ljava/lang/Class;)V
L6:
aload 1
areturn
L2:
astore 1
L7:
aload 0
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 1
L8:
aload 1
astore 2
L10:
aload 0
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/addClassMapping(Ljava/lang/String;Ljava/lang/Class;)V
L11:
aload 1
areturn
L9:
astore 0
aload 2
areturn
.limit locals 4
.limit stack 4
.end method
