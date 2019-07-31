.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/EnumDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field private final 'enumClass' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private final 'nameMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Enum;>;"

.field private final 'ordinalMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Enum;>;"

.method public <init>(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/ordinalMap Ljava/util/Map;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/nameMap Ljava/util/Map;
aload 0
aload 1
putfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/enumClass Ljava/lang/Class;
L0:
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
astore 4
aload 4
arraylength
istore 3
L1:
iconst_0
istore 2
L5:
iload 2
iload 3
if_icmpge L6
L3:
aload 4
iload 2
aaload
checkcast java/lang/Enum
astore 5
aload 0
getfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/ordinalMap Ljava/util/Map;
aload 5
invokevirtual java/lang/Enum/ordinal()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 5
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/nameMap Ljava/util/Map;
aload 5
invokevirtual java/lang/Enum/name()Ljava/lang/String;
aload 5
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L5
L2:
astore 4
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "init enum values error, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
return
.limit locals 6
.limit stack 4
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
.catch com/alibaba/fastjson/JSONException from L0 to L1 using L2
.catch java/lang/Throwable from L0 to L1 using L3
.catch com/alibaba/fastjson/JSONException from L4 to L2 using L2
.catch java/lang/Throwable from L4 to L2 using L3
.catch com/alibaba/fastjson/JSONException from L5 to L6 using L2
.catch java/lang/Throwable from L5 to L6 using L3
.catch com/alibaba/fastjson/JSONException from L6 to L7 using L2
.catch java/lang/Throwable from L6 to L7 using L3
.catch com/alibaba/fastjson/JSONException from L7 to L8 using L2
.catch java/lang/Throwable from L7 to L8 using L3
.catch com/alibaba/fastjson/JSONException from L9 to L10 using L2
.catch java/lang/Throwable from L9 to L10 using L3
L0:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 2
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L5
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
astore 1
aload 2
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
getfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/ordinalMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
astore 2
L1:
aload 2
ifnonnull L10
L4:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "parse enum "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/enumClass Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " error, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
aload 1
athrow
L5:
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L7
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 1
aload 2
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 1
invokevirtual java/lang/String/length()I
ifne L6
aconst_null
checkcast java/lang/Object
areturn
L6:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/nameMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 0
getfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/enumClass Ljava/lang/Class;
aload 1
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
areturn
L7:
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L9
aload 2
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L8:
aconst_null
areturn
L3:
astore 1
new com/alibaba/fastjson/JSONException
dup
aload 1
invokevirtual java/lang/Throwable/getMessage()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L9:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "parse enum "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/EnumDeserializer/enumClass Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " error, value : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L10:
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public getFastMatchToken()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method
