.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter
.super com/google/gson/TypeAdapter
.signature "<T:Ljava/lang/Enum<TT;>;>Lcom/google/gson/TypeAdapter<TT;>;"
.inner class private static final EnumTypeAdapter inner com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter outer com/google/gson/internal/bind/TypeAdapters

.field private final 'constantToName' Ljava/util/Map; signature "Ljava/util/Map<TT;Ljava/lang/String;>;"

.field private final 'nameToConstant' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;TT;>;"

.method public <init>(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<TT;>;)V"
.catch java/lang/NoSuchFieldException from L0 to L1 using L2
.catch java/lang/NoSuchFieldException from L3 to L4 using L2
.catch java/lang/NoSuchFieldException from L5 to L6 using L2
.catch java/lang/NoSuchFieldException from L6 to L7 using L2
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter/nameToConstant Ljava/util/Map;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter/constantToName Ljava/util/Map;
L0:
aload 1
invokevirtual java/lang/Class/getEnumConstants()[Ljava/lang/Object;
checkcast [Ljava/lang/Enum;
astore 5
aload 5
arraylength
istore 3
L1:
iconst_0
istore 2
L8:
iload 2
iload 3
if_icmpge L9
aload 5
iload 2
aaload
astore 6
L3:
aload 6
invokevirtual java/lang/Enum/name()Ljava/lang/String;
astore 4
aload 1
aload 4
invokevirtual java/lang/Class/getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
ldc com/google/gson/annotations/SerializedName
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/google/gson/annotations/SerializedName
astore 7
L4:
aload 7
ifnull L6
L5:
aload 7
invokeinterface com/google/gson/annotations/SerializedName/value()Ljava/lang/String; 0
astore 4
L6:
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter/nameToConstant Ljava/util/Map;
aload 4
aload 6
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter/constantToName Ljava/util/Map;
aload 6
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L7:
iload 2
iconst_1
iadd
istore 2
goto L8
L2:
astore 1
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L9:
return
.limit locals 8
.limit stack 3
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Enum;
.signature "(Lcom/google/gson/stream/JsonReader;)TT;"
.throws java/io/IOException
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L0
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
L0:
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter/nameToConstant Ljava/util/Map;
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Enum
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Enum;
areturn
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Enum;)V
.signature "(Lcom/google/gson/stream/JsonWriter;TT;)V"
.throws java/io/IOException
aload 2
ifnonnull L0
aconst_null
astore 2
L1:
aload 1
aload 2
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter/constantToName Ljava/util/Map;
aload 2
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 2
goto L1
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/lang/Enum
invokevirtual com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Enum;)V
return
.limit locals 3
.limit stack 3
.end method
