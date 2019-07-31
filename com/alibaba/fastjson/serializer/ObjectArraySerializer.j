.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ObjectArraySerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/ObjectArraySerializer
dup
invokespecial com/alibaba/fastjson/serializer/ObjectArraySerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/ObjectArraySerializer/instance Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;
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
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 9
aload 2
checkcast [Ljava/lang/Object;
checkcast [Ljava/lang/Object;
astore 10
aload 2
ifnonnull L26
aload 9
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L27
aload 9
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L27:
aload 9
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L26:
aload 10
arraylength
istore 6
iload 6
iconst_1
isub
istore 7
iload 7
iconst_m1
if_icmpne L28
aload 9
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
L28:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 8
aload 1
aload 8
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
aconst_null
astore 3
aconst_null
astore 2
L0:
aload 9
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
aload 9
getstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L29
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/incrementIndent()V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
L1:
iconst_0
istore 5
L30:
iload 5
iload 6
if_icmpge L6
iload 5
ifeq L4
L3:
aload 9
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
L4:
aload 1
aload 10
iload 5
aaload
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
L5:
iload 5
iconst_1
iadd
istore 5
goto L30
L6:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/decrementIdent()V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/println()V
aload 9
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L7:
aload 1
aload 8
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
return
L29:
iconst_0
istore 5
L31:
iload 5
iload 7
if_icmpge L32
aload 10
iload 5
aaload
astore 11
aload 11
ifnonnull L10
L8:
aload 9
ldc "null,"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L9:
goto L33
L10:
aload 1
aload 11
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/containsReference(Ljava/lang/Object;)Z
ifeq L13
aload 1
aload 11
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeReference(Ljava/lang/Object;)V
L11:
aload 9
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L12:
goto L33
L2:
astore 2
aload 1
aload 8
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 2
athrow
L13:
aload 11
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 4
L14:
aload 4
aload 3
if_acmpne L34
L15:
aload 2
aload 1
aload 11
aconst_null
aconst_null
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L16:
goto L11
L34:
aload 4
astore 3
L17:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
astore 2
aload 2
aload 1
aload 11
aconst_null
aconst_null
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L18:
goto L11
L32:
aload 10
iload 7
aaload
astore 2
aload 2
ifnonnull L21
L19:
aload 9
ldc "null]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L20:
aload 1
aload 8
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
return
L21:
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/containsReference(Ljava/lang/Object;)Z
ifeq L24
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeReference(Ljava/lang/Object;)V
L22:
aload 9
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L23:
goto L20
L24:
aload 1
aload 2
iload 7
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V
L25:
goto L22
L33:
iload 5
iconst_1
iadd
istore 5
goto L31
.limit locals 12
.limit stack 5
.end method
