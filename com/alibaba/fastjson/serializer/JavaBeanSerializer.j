.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/JavaBeanSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field private final 'getters' [Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private final 'sortedGetters' [Lcom/alibaba/fastjson/serializer/FieldSerializer;

.method public <init>(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
aload 0
aload 1
aconst_null
checkcast java/util/Map
invokespecial com/alibaba/fastjson/serializer/JavaBeanSerializer/<init>(Ljava/lang/Class;Ljava/util/Map;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/lang/Class;Ljava/util/Map;)V
.signature "(Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
aload 2
iconst_0
invokestatic com/alibaba/fastjson/util/TypeUtils/computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L0:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
aload 0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
invokevirtual com/alibaba/fastjson/serializer/JavaBeanSerializer/createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 0
aload 3
aload 3
invokeinterface java/util/List/size()I 0
anewarray com/alibaba/fastjson/serializer/FieldSerializer
invokeinterface java/util/List/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
checkcast [Lcom/alibaba/fastjson/serializer/FieldSerializer;
putfield com/alibaba/fastjson/serializer/JavaBeanSerializer/getters [Lcom/alibaba/fastjson/serializer/FieldSerializer;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
aload 2
iconst_1
invokestatic com/alibaba/fastjson/util/TypeUtils/computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 3
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
invokevirtual com/alibaba/fastjson/serializer/JavaBeanSerializer/createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L3:
aload 0
aload 3
aload 3
invokeinterface java/util/List/size()I 0
anewarray com/alibaba/fastjson/serializer/FieldSerializer
invokeinterface java/util/List/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
checkcast [Lcom/alibaba/fastjson/serializer/FieldSerializer;
putfield com/alibaba/fastjson/serializer/JavaBeanSerializer/sortedGetters [Lcom/alibaba/fastjson/serializer/FieldSerializer;
return
.limit locals 5
.limit stack 3
.end method

.method public transient <init>(Ljava/lang/Class;[Ljava/lang/String;)V
.signature "(Ljava/lang/Class<*>;[Ljava/lang/String;)V"
aload 0
aload 1
aload 2
invokestatic com/alibaba/fastjson/serializer/JavaBeanSerializer/createAliasMap([Ljava/lang/String;)Ljava/util/Map;
invokespecial com/alibaba/fastjson/serializer/JavaBeanSerializer/<init>(Ljava/lang/Class;Ljava/util/Map;)V
return
.limit locals 3
.limit stack 3
.end method

.method static transient createAliasMap([Ljava/lang/String;)Ljava/util/Map;
.signature "([Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 3
aload 0
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 0
iload 1
aaload
astore 4
aload 3
aload 4
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
ldc java/lang/Number
if_acmpne L0
new com/alibaba/fastjson/serializer/NumberFieldSerializer
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/NumberFieldSerializer/<init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
areturn
L0:
new com/alibaba/fastjson/serializer/ObjectFieldSerializer
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/ObjectFieldSerializer/<init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public getGetters()[Lcom/alibaba/fastjson/serializer/FieldSerializer;
aload 0
getfield com/alibaba/fastjson/serializer/JavaBeanSerializer/getters [Lcom/alibaba/fastjson/serializer/FieldSerializer;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
aload 1
aload 3
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
ireturn
.limit locals 5
.limit stack 3
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/lang/Exception from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/lang/Exception from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch java/lang/Exception from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/lang/Exception from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/lang/Exception from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch java/lang/Exception from L25 to L26 using L2
.catch all from L25 to L26 using L3
.catch java/lang/Exception from L27 to L28 using L2
.catch all from L27 to L28 using L3
.catch java/lang/Exception from L28 to L29 using L2
.catch all from L28 to L29 using L3
.catch java/lang/Exception from L30 to L31 using L2
.catch all from L30 to L31 using L3
.catch java/lang/Exception from L31 to L32 using L2
.catch all from L31 to L32 using L3
.catch all from L33 to L3 using L3
.catch java/lang/Exception from L34 to L35 using L2
.catch all from L34 to L35 using L3
.catch java/lang/Exception from L36 to L37 using L2
.catch all from L36 to L37 using L3
.catch java/lang/Exception from L38 to L39 using L2
.catch all from L38 to L39 using L3
.catch java/lang/Exception from L39 to L40 using L2
.catch all from L39 to L40 using L3
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 13
aload 2
ifnonnull L41
aload 13
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L41:
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/containsReference(Ljava/lang/Object;)Z
ifeq L42
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JavaBeanSerializer/writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
return
L42:
aload 13
getstatic com/alibaba/fastjson/serializer/SerializerFeature/SortField Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L43
aload 0
getfield com/alibaba/fastjson/serializer/JavaBeanSerializer/sortedGetters [Lcom/alibaba/fastjson/serializer/FieldSerializer;
astore 12
L44:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 14
aload 1
aload 14
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
aload 1
aload 2
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isWriteAsArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
istore 10
iload 10
ifeq L45
bipush 91
istore 6
L46:
iload 10
ifeq L47
bipush 93
istore 5
L0:
aload 13
iload 6
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
aload 12
arraylength
ifle L1
aload 13
getstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/incrementIndent()V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
L1:
iconst_0
istore 8
iload 8
istore 7
L4:
aload 0
aload 1
aload 2
aload 4
aload 3
invokevirtual com/alibaba/fastjson/serializer/JavaBeanSerializer/isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
ifeq L48
L5:
iload 8
istore 7
L6:
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 4
if_acmpeq L48
aload 13
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 1
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
L7:
iconst_1
istore 7
goto L48
L8:
aload 1
aload 2
iload 6
invokestatic com/alibaba/fastjson/serializer/FilterUtils/writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
bipush 44
if_icmpne L49
L9:
iconst_1
istore 7
goto L50
L10:
iload 8
aload 12
arraylength
if_icmpge L51
L11:
aload 12
iload 8
aaload
astore 3
L12:
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/SkipTransientField Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L52
aload 3
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/getField()Ljava/lang/reflect/Field;
astore 4
L13:
aload 4
ifnull L52
L14:
aload 4
invokevirtual java/lang/reflect/Field/getModifiers()I
invokestatic java/lang/reflect/Modifier/isTransient(I)Z
istore 11
L15:
iload 11
ifeq L52
iload 7
istore 9
L53:
iload 8
iconst_1
iadd
istore 8
iload 9
istore 7
goto L10
L43:
aload 0
getfield com/alibaba/fastjson/serializer/JavaBeanSerializer/getters [Lcom/alibaba/fastjson/serializer/FieldSerializer;
astore 12
goto L44
L45:
bipush 123
istore 6
goto L46
L47:
bipush 125
istore 5
goto L0
L54:
iconst_0
istore 6
goto L8
L49:
iconst_0
istore 7
goto L50
L52:
iload 7
istore 9
L16:
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/getName()Ljava/lang/String;
invokestatic com/alibaba/fastjson/serializer/FilterUtils/applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
ifeq L53
aload 3
aload 2
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
astore 4
L17:
iload 7
istore 9
L18:
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/getName()Ljava/lang/String;
aload 4
invokestatic com/alibaba/fastjson/serializer/FilterUtils/apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
ifeq L53
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/getName()Ljava/lang/String;
aload 4
invokestatic com/alibaba/fastjson/serializer/FilterUtils/processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
astore 15
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/getName()Ljava/lang/String;
aload 4
invokestatic com/alibaba/fastjson/serializer/FilterUtils/processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
astore 16
L19:
aload 16
ifnonnull L23
iload 10
ifne L23
L20:
aload 3
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/isWriteNull()Z
ifne L23
L21:
iload 7
istore 9
L22:
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteMapNullValue Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L53
L23:
iload 7
ifeq L25
L24:
aload 13
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
aload 13
getstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L25
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
L25:
aload 15
aload 3
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/getName()Ljava/lang/String;
if_acmpeq L55
L26:
iload 10
ifne L28
L27:
aload 13
aload 15
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
L28:
aload 1
aload 16
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
L29:
goto L56
L55:
aload 4
aload 16
if_acmpeq L57
iload 10
ifne L31
L30:
aload 3
aload 1
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V
L31:
aload 1
aload 16
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
L32:
goto L56
L2:
astore 2
L33:
new com/alibaba/fastjson/JSONException
dup
ldc "write javaBean error"
aload 2
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L3:
astore 2
aload 1
aload 14
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 2
athrow
L57:
iload 10
ifne L36
L34:
aload 3
aload 1
aload 16
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
L35:
goto L56
L36:
aload 3
aload 1
aload 16
invokevirtual com/alibaba/fastjson/serializer/FieldSerializer/writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
L37:
goto L56
L38:
aload 1
aload 2
iload 6
invokestatic com/alibaba/fastjson/serializer/FilterUtils/writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
pop
aload 12
arraylength
ifle L39
aload 13
getstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L39
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/decrementIdent()V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
L39:
aload 13
iload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L40:
aload 1
aload 14
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
return
L58:
iconst_0
istore 6
goto L38
L48:
iload 7
ifeq L54
bipush 44
istore 6
goto L8
L50:
iconst_0
istore 8
goto L10
L56:
iconst_1
istore 9
goto L53
L51:
iload 7
ifeq L58
bipush 44
istore 6
goto L38
.limit locals 17
.limit stack 5
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeReference(Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method
