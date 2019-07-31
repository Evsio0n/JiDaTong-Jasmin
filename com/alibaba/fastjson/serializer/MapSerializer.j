.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/MapSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/MapSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/MapSerializer
dup
invokespecial com/alibaba/fastjson/serializer/MapSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/MapSerializer/instance Lcom/alibaba/fastjson/serializer/MapSerializer;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L3 to L4 using L5
.catch all from L6 to L7 using L5
.catch all from L8 to L9 using L5
.catch all from L9 to L10 using L5
.catch all from L11 to L12 using L5
.catch all from L13 to L14 using L5
.catch all from L14 to L15 using L5
.catch all from L15 to L16 using L5
.catch all from L17 to L18 using L5
.catch all from L19 to L20 using L5
.catch all from L20 to L21 using L5
.catch all from L21 to L22 using L5
.catch all from L23 to L24 using L5
.catch all from L25 to L26 using L5
.catch all from L26 to L27 using L5
.catch all from L27 to L28 using L5
.catch all from L29 to L30 using L5
.catch all from L31 to L32 using L5
.catch all from L32 to L33 using L5
.catch all from L34 to L35 using L5
.catch all from L35 to L36 using L5
.catch all from L37 to L38 using L5
.catch all from L38 to L39 using L5
.catch all from L39 to L40 using L5
.catch all from L41 to L42 using L5
.catch all from L43 to L44 using L5
.catch all from L44 to L45 using L5
.catch all from L46 to L47 using L5
.catch all from L47 to L48 using L5
.catch all from L49 to L50 using L5
.catch all from L51 to L52 using L5
.catch all from L52 to L53 using L5
.catch all from L54 to L55 using L5
.catch all from L56 to L57 using L5
.catch all from L57 to L58 using L5
.catch all from L59 to L60 using L5
.catch all from L60 to L61 using L5
.catch all from L61 to L62 using L5
.catch all from L62 to L63 using L5
.catch all from L64 to L65 using L5
.catch all from L66 to L67 using L5
.catch all from L68 to L69 using L5
.catch all from L70 to L71 using L5
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 10
aload 2
ifnonnull L72
aload 10
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L72:
aload 2
checkcast java/util/Map
astore 4
aload 4
astore 6
aload 10
getstatic com/alibaba/fastjson/serializer/SerializerFeature/SortField Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 4
astore 6
aload 4
instanceof java/util/SortedMap
ifne L1
aload 4
astore 6
aload 4
instanceof java/util/LinkedHashMap
ifne L1
L0:
new java/util/TreeMap
dup
aload 4
invokespecial java/util/TreeMap/<init>(Ljava/util/Map;)V
astore 6
L1:
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/containsReference(Ljava/lang/Object;)Z
ifeq L73
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeReference(Ljava/lang/Object;)V
return
L73:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 11
aload 1
aload 11
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
L3:
aload 10
bipush 123
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/incrementIndent()V
L4:
aconst_null
astore 7
aconst_null
astore 8
iconst_1
istore 5
L6:
aload 10
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L8
aload 10
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 10
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
L7:
iconst_0
istore 5
L8:
aload 6
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 12
L9:
aload 12
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L74
aload 12
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
astore 9
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
astore 4
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyPreFiltersDirect()Ljava/util/List;
astore 3
L10:
aload 3
ifnull L15
L11:
aload 3
invokeinterface java/util/List/size()I 0
ifle L15
L12:
aload 4
ifnull L14
L13:
aload 4
instanceof java/lang/String
ifeq L43
L14:
aload 1
aload 2
aload 4
checkcast java/lang/String
invokestatic com/alibaba/fastjson/serializer/FilterUtils/applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
ifeq L9
L15:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFiltersDirect()Ljava/util/List;
astore 3
L16:
aload 3
ifnull L21
L17:
aload 3
invokeinterface java/util/List/size()I 0
ifle L21
L18:
aload 4
ifnull L20
L19:
aload 4
instanceof java/lang/String
ifeq L46
L20:
aload 1
aload 2
aload 4
checkcast java/lang/String
aload 9
invokestatic com/alibaba/fastjson/serializer/FilterUtils/apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
ifeq L9
L21:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFiltersDirect()Ljava/util/List;
astore 13
L22:
aload 4
astore 3
aload 13
ifnull L27
aload 4
astore 3
L23:
aload 13
invokeinterface java/util/List/size()I 0
ifle L27
L24:
aload 4
ifnull L26
L25:
aload 4
instanceof java/lang/String
ifeq L49
L26:
aload 1
aload 2
aload 4
checkcast java/lang/String
aload 9
invokestatic com/alibaba/fastjson/serializer/FilterUtils/processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
astore 3
L27:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getValueFiltersDirect()Ljava/util/List;
astore 13
L28:
aload 9
astore 4
aload 13
ifnull L33
aload 9
astore 4
L29:
aload 13
invokeinterface java/util/List/size()I 0
ifle L33
L30:
aload 3
ifnull L32
L31:
aload 3
instanceof java/lang/String
ifeq L54
L32:
aload 1
aload 2
aload 3
checkcast java/lang/String
aload 9
invokestatic com/alibaba/fastjson/serializer/FilterUtils/processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
astore 4
L33:
aload 4
ifnonnull L35
L34:
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteMapNullValue Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L9
L35:
aload 3
instanceof java/lang/String
ifeq L75
aload 3
checkcast java/lang/String
astore 9
L36:
iload 5
ifne L38
L37:
aload 10
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L38:
aload 10
getstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L39
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
L39:
aload 10
aload 9
iconst_1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;Z)V
L40:
iconst_0
istore 5
aload 4
ifnonnull L66
L41:
aload 10
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
L42:
goto L9
L5:
astore 2
aload 1
aload 11
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 2
athrow
L43:
aload 4
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/isPrimitive()Z
ifne L44
aload 4
instanceof java/lang/Number
ifeq L15
L44:
aload 1
aload 2
aload 4
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/serializer/FilterUtils/applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
ifne L15
L45:
goto L9
L46:
aload 4
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/isPrimitive()Z
ifne L47
aload 4
instanceof java/lang/Number
ifeq L21
L47:
aload 1
aload 2
aload 4
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;)Ljava/lang/String;
aload 9
invokestatic com/alibaba/fastjson/serializer/FilterUtils/apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
ifne L21
L48:
goto L9
L49:
aload 4
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/isPrimitive()Z
ifne L52
L50:
aload 4
astore 3
L51:
aload 4
instanceof java/lang/Number
ifeq L27
L52:
aload 1
aload 2
aload 4
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;)Ljava/lang/String;
aload 9
invokestatic com/alibaba/fastjson/serializer/FilterUtils/processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
astore 3
L53:
goto L27
L54:
aload 3
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/isPrimitive()Z
ifne L57
L55:
aload 9
astore 4
L56:
aload 3
instanceof java/lang/Number
ifeq L33
L57:
aload 1
aload 2
aload 3
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;)Ljava/lang/String;
aload 9
invokestatic com/alibaba/fastjson/serializer/FilterUtils/processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
astore 4
L58:
goto L33
L75:
iload 5
ifne L60
L59:
aload 10
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L60:
aload 10
getstatic com/alibaba/fastjson/serializer/SerializerFeature/BrowserCompatible Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifne L61
aload 10
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNonStringKeyAsString Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L64
L61:
aload 1
aload 3
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
L62:
aload 10
bipush 58
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L63:
goto L40
L64:
aload 1
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
L65:
goto L62
L66:
aload 4
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 9
L67:
aload 9
aload 7
if_acmpne L76
L68:
aload 8
aload 1
aload 4
aload 3
aconst_null
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L69:
goto L9
L76:
aload 9
astore 7
L70:
aload 1
aload 9
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
astore 8
aload 8
aload 1
aload 4
aload 3
aconst_null
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L71:
goto L9
L74:
aload 1
aload 11
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/decrementIdent()V
aload 10
getstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L77
aload 6
invokeinterface java/util/Map/size()I 0
ifle L77
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
L77:
aload 10
bipush 125
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L2:
astore 6
aload 4
astore 6
goto L1
.limit locals 14
.limit stack 5
.end method
