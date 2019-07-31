.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ArraySerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field private final 'compObjectSerializer' Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field private final 'componentType' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.method public <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/ArraySerializer/componentType Ljava/lang/Class;
aload 0
aload 2
putfield com/alibaba/fastjson/serializer/ArraySerializer/compObjectSerializer Lcom/alibaba/fastjson/serializer/ObjectSerializer;
return
.limit locals 3
.limit stack 2
.end method

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 7
aload 2
ifnonnull L13
aload 7
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L14
aload 7
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L14:
aload 7
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L13:
aload 2
checkcast [Ljava/lang/Object;
checkcast [Ljava/lang/Object;
astore 8
aload 8
arraylength
istore 6
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 4
aload 1
aload 4
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
L0:
aload 7
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L1:
iconst_0
istore 5
L15:
iload 5
iload 6
if_icmpge L11
iload 5
ifeq L4
L3:
aload 7
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L4:
aload 8
iload 5
aaload
astore 2
aload 2
ifnonnull L7
L5:
aload 7
ldc "null"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L6:
goto L16
L7:
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 0
getfield com/alibaba/fastjson/serializer/ArraySerializer/componentType Ljava/lang/Class;
if_acmpne L9
aload 0
getfield com/alibaba/fastjson/serializer/ArraySerializer/compObjectSerializer Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 1
aload 2
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aconst_null
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L8:
goto L16
L2:
astore 2
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 2
athrow
L9:
aload 1
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 1
aload 2
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aconst_null
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L10:
goto L16
L11:
aload 7
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L12:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
return
L16:
iload 5
iconst_1
iadd
istore 5
goto L15
.limit locals 9
.limit stack 5
.end method
