.bytecode 50.0
.class public synchronized com/alibaba/fastjson/JSONObject
.super com/alibaba/fastjson/JSON
.implements java/util/Map
.implements com/alibaba/fastjson/JSONAware
.implements java/lang/Cloneable
.implements java/io/Serializable
.implements java/lang/reflect/InvocationHandler
.signature "Lcom/alibaba/fastjson/JSON;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/alibaba/fastjson/JSONAware;Ljava/lang/Cloneable;Ljava/io/Serializable;Ljava/lang/reflect/InvocationHandler;"

.field private static final 'DEFAULT_INITIAL_CAPACITY' I = 16


.field private static final 'serialVersionUID' J = 1L


.field private final 'map' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"

.method public <init>()V
aload 0
bipush 16
iconst_0
invokespecial com/alibaba/fastjson/JSONObject/<init>(IZ)V
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(I)V
aload 0
iload 1
iconst_0
invokespecial com/alibaba/fastjson/JSONObject/<init>(IZ)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(IZ)V
aload 0
invokespecial com/alibaba/fastjson/JSON/<init>()V
iload 2
ifeq L0
aload 0
new java/util/LinkedHashMap
dup
iload 1
invokespecial java/util/LinkedHashMap/<init>(I)V
putfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
return
L0:
aload 0
new java/util/HashMap
dup
iload 1
invokespecial java/util/HashMap/<init>(I)V
putfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
aload 0
invokespecial com/alibaba/fastjson/JSON/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Z)V
aload 0
bipush 16
iload 1
invokespecial com/alibaba/fastjson/JSONObject/<init>(IZ)V
return
.limit locals 2
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public clone()Ljava/lang/Object;
new com/alibaba/fastjson/JSONObject
dup
new java/util/HashMap
dup
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
invokespecial java/util/HashMap/<init>(Ljava/util/Map;)V
invokespecial com/alibaba/fastjson/JSONObject/<init>(Ljava/util/Map;)V
areturn
.limit locals 1
.limit stack 5
.end method

.method public containsKey(Ljava/lang/Object;)Z
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public containsValue(Ljava/lang/Object;)Z
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
invokeinterface java/util/Map/containsValue(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public entrySet()Ljava/util/Set;
.signature "()Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
invokeinterface java/util/Map/equals(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getByte(Ljava/lang/String;)Ljava/lang/Byte;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getByteValue(Ljava/lang/String;)B
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
invokevirtual java/lang/Byte/byteValue()B
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getBytes(Ljava/lang/String;)[B
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBytes(Ljava/lang/Object;)[B
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDate(Ljava/lang/Object;)Ljava/util/Date;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDoubleValue(Ljava/lang/String;)D
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
dconst_0
dreturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
invokevirtual java/lang/Double/doubleValue()D
dreturn
.limit locals 2
.limit stack 2
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getFloatValue(Ljava/lang/String;)F
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
fconst_0
freturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
invokevirtual java/lang/Float/floatValue()F
freturn
.limit locals 2
.limit stack 2
.end method

.method public getIntValue(Ljava/lang/String;)I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
astore 1
aload 1
instanceof com/alibaba/fastjson/JSONArray
ifeq L0
aload 1
checkcast com/alibaba/fastjson/JSONArray
areturn
L0:
aload 1
invokestatic com/alibaba/fastjson/JSONObject/toJSON(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/JSONArray
areturn
.limit locals 2
.limit stack 2
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
astore 1
aload 1
instanceof com/alibaba/fastjson/JSONObject
ifeq L0
aload 1
checkcast com/alibaba/fastjson/JSONObject
areturn
L0:
aload 1
invokestatic com/alibaba/fastjson/JSONObject/toJSON(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/JSONObject
areturn
.limit locals 2
.limit stack 2
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToLong(Ljava/lang/Object;)Ljava/lang/Long;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getLongValue(Ljava/lang/String;)J
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
lconst_0
lreturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToLong(Ljava/lang/Object;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;"
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getShort(Ljava/lang/String;)Ljava/lang/Short;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToShort(Ljava/lang/Object;)Ljava/lang/Short;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getShortValue(Ljava/lang/String;)S
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToShort(Ljava/lang/Object;)Ljava/lang/Short;
invokevirtual java/lang/Short/shortValue()S
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getSqlDate(Ljava/lang/String;)Ljava/sql/Date;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
areturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
invokeinterface java/util/Map/hashCode()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.throws java/lang/Throwable
aload 2
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
astore 1
aload 1
arraylength
iconst_1
if_icmpne L0
aload 2
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
getstatic java/lang/Void/TYPE Ljava/lang/Class;
if_acmpeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "illegal setter"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aconst_null
astore 4
aload 2
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Method/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 5
aload 4
astore 1
aload 5
ifnull L2
aload 4
astore 1
aload 5
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifeq L2
aload 5
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
astore 1
L2:
aload 1
astore 4
aload 1
ifnonnull L3
aload 2
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
astore 1
aload 1
ldc "set"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L4
new com/alibaba/fastjson/JSONException
dup
ldc "illegal setter"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 1
iconst_3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 1
aload 1
invokevirtual java/lang/String/length()I
ifne L5
new com/alibaba/fastjson/JSONException
dup
ldc "illegal setter"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L5:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_0
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/toLowerCase(C)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 1
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L3:
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 4
aload 3
iconst_0
aaload
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aconst_null
areturn
L0:
aload 1
arraylength
ifne L6
aload 2
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
getstatic java/lang/Void/TYPE Ljava/lang/Class;
if_acmpne L7
new com/alibaba/fastjson/JSONException
dup
ldc "illegal getter"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L7:
aconst_null
astore 3
aload 2
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Method/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 4
aload 3
astore 1
aload 4
ifnull L8
aload 3
astore 1
aload 4
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifeq L8
aload 4
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
astore 1
L8:
aload 1
astore 3
aload 1
ifnonnull L9
aload 2
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
astore 1
aload 1
ldc "get"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L10
aload 1
iconst_3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 1
aload 1
invokevirtual java/lang/String/length()I
ifne L11
new com/alibaba/fastjson/JSONException
dup
ldc "illegal getter"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L11:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_0
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/toLowerCase(C)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 1
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L9:
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 3
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
aload 2
invokevirtual java/lang/reflect/Method/getGenericReturnType()Ljava/lang/reflect/Type;
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
L10:
aload 1
ldc "is"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L12
aload 1
iconst_2
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 1
aload 1
invokevirtual java/lang/String/length()I
ifne L13
new com/alibaba/fastjson/JSONException
dup
ldc "illegal getter"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L13:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
iconst_0
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/toLowerCase(C)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 1
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
goto L9
L12:
new com/alibaba/fastjson/JSONException
dup
ldc "illegal getter"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
new java/lang/UnsupportedOperationException
dup
aload 2
invokevirtual java/lang/reflect/Method/toGenericString()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 4
.end method

.method public isEmpty()Z
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
invokeinterface java/util/Map/isEmpty()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public keySet()Ljava/util/Set;
.signature "()Ljava/util/Set<Ljava/lang/String;>;"
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast java/lang/String
aload 2
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 3
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public putAll(Ljava/util/Map;)V
.signature "(Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/Object;>;)V"
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
invokeinterface java/util/Map/putAll(Ljava/util/Map;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public size()I
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
invokeinterface java/util/Map/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public values()Ljava/util/Collection;
.signature "()Ljava/util/Collection<Ljava/lang/Object;>;"
aload 0
getfield com/alibaba/fastjson/JSONObject/map Ljava/util/Map;
invokeinterface java/util/Map/values()Ljava/util/Collection; 0
areturn
.limit locals 1
.limit stack 1
.end method
