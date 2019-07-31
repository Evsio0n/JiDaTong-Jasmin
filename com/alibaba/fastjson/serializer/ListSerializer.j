.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/serializer/ListSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/ListSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/ListSerializer
dup
invokespecial com/alibaba/fastjson/serializer/ListSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/ListSerializer/instance Lcom/alibaba/fastjson/serializer/ListSerializer;
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

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
.catch all from L14 to L15 using L2
.catch all from L16 to L17 using L2
.catch all from L18 to L19 using L2
.catch all from L20 to L21 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L2
.catch all from L30 to L31 using L2
.catch all from L31 to L32 using L2
.catch all from L33 to L34 using L2
.catch all from L35 to L36 using L2
.catch all from L37 to L38 using L2
.catch all from L39 to L40 using L2
.catch all from L41 to L42 using L2
.catch all from L43 to L44 using L2
.catch all from L45 to L46 using L2
.catch all from L47 to L48 using L2
.catch all from L48 to L49 using L2
.catch all from L50 to L51 using L2
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
istore 8
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 13
aconst_null
astore 12
aload 12
astore 11
iload 8
ifeq L52
aload 12
astore 11
aload 4
instanceof java/lang/reflect/ParameterizedType
ifeq L52
aload 4
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 11
L52:
aload 2
ifnonnull L53
aload 13
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L54
aload 13
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L54:
aload 13
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L53:
aload 2
checkcast java/util/List
astore 12
aload 12
invokeinterface java/util/List/size()I 0
istore 6
iload 6
iconst_1
isub
istore 7
iload 7
iconst_m1
if_icmpne L55
aload 13
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
L55:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 4
aload 1
aload 4
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
iload 6
iconst_1
if_icmple L14
L0:
aload 13
getstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L14
aload 13
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/incrementIndent()V
L1:
iconst_0
istore 5
L56:
iload 5
iload 6
if_icmpge L12
iload 5
ifeq L4
L3:
aload 13
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L4:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
aload 12
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
astore 14
L5:
aload 14
ifnull L10
L6:
aload 1
aload 14
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/containsReference(Ljava/lang/Object;)Z
ifeq L8
aload 1
aload 14
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeReference(Ljava/lang/Object;)V
L7:
goto L57
L8:
aload 1
aload 14
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
astore 15
aload 1
new com/alibaba/fastjson/serializer/SerialContext
dup
aload 4
aload 2
aload 3
invokespecial com/alibaba/fastjson/serializer/SerialContext/<init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 15
aload 1
aload 14
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 11
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L9:
goto L57
L2:
astore 2
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 2
athrow
L10:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
L11:
goto L57
L12:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/decrementIdent()V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
aload 13
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L13:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
return
L14:
aload 13
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L15:
iconst_0
istore 5
L58:
iload 5
iload 7
if_icmpge L35
L16:
aload 12
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
astore 14
L17:
aload 14
ifnonnull L20
L18:
aload 13
ldc "null,"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L19:
goto L59
L20:
aload 14
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 15
L21:
aload 15
ldc java/lang/Integer
if_acmpne L60
L22:
aload 13
aload 14
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeIntAndChar(IC)V
L23:
goto L59
L60:
aload 15
ldc java/lang/Long
if_acmpne L30
L24:
aload 14
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 9
L25:
iload 8
ifeq L28
L26:
aload 13
lload 9
bipush 76
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLongAndChar(JC)V
aload 13
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L27:
goto L59
L28:
aload 13
lload 9
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLongAndChar(JC)V
L29:
goto L59
L30:
aload 1
new com/alibaba/fastjson/serializer/SerialContext
dup
aload 4
aload 2
aload 3
invokespecial com/alibaba/fastjson/serializer/SerialContext/<init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 1
aload 14
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/containsReference(Ljava/lang/Object;)Z
ifeq L33
aload 1
aload 14
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeReference(Ljava/lang/Object;)V
L31:
aload 13
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L32:
goto L59
L33:
aload 1
aload 14
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 1
aload 14
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 11
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L34:
goto L31
L35:
aload 12
iload 7
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
astore 12
L36:
aload 12
ifnonnull L39
L37:
aload 13
ldc "null]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L38:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
return
L39:
aload 12
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 14
L40:
aload 14
ldc java/lang/Integer
if_acmpne L61
L41:
aload 13
aload 12
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeIntAndChar(IC)V
L42:
goto L38
L61:
aload 14
ldc java/lang/Long
if_acmpne L47
iload 8
ifeq L45
L43:
aload 13
aload 12
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
bipush 76
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLongAndChar(JC)V
aload 13
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L44:
goto L38
L45:
aload 13
aload 12
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLongAndChar(JC)V
L46:
goto L38
L47:
aload 1
new com/alibaba/fastjson/serializer/SerialContext
dup
aload 4
aload 2
aload 3
invokespecial com/alibaba/fastjson/serializer/SerialContext/<init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 1
aload 12
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/containsReference(Ljava/lang/Object;)Z
ifeq L50
aload 1
aload 12
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeReference(Ljava/lang/Object;)V
L48:
aload 13
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L49:
goto L38
L50:
aload 1
aload 12
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 1
aload 12
iload 7
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 11
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L51:
goto L48
L57:
iload 5
iconst_1
iadd
istore 5
goto L56
L59:
iload 5
iconst_1
iadd
istore 5
goto L58
.limit locals 16
.limit stack 6
.end method
