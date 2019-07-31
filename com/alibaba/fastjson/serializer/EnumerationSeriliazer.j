.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/EnumerationSeriliazer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/EnumerationSeriliazer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/EnumerationSeriliazer
dup
invokespecial com/alibaba/fastjson/serializer/EnumerationSeriliazer/<init>()V
putstatic com/alibaba/fastjson/serializer/EnumerationSeriliazer/instance Lcom/alibaba/fastjson/serializer/EnumerationSeriliazer;
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
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L5
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L5
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 9
aload 2
ifnonnull L14
aload 9
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L15
aload 9
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L15:
aload 9
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L14:
aconst_null
astore 8
aload 8
astore 7
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L16
aload 8
astore 7
aload 4
instanceof java/lang/reflect/ParameterizedType
ifeq L16
aload 4
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 7
L16:
aload 2
checkcast java/util/Enumeration
astore 8
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 4
aload 1
aload 4
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
L0:
aload 9
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L1:
iconst_0
istore 5
L3:
aload 8
invokeinterface java/util/Enumeration/hasMoreElements()Z 0
ifeq L12
aload 8
invokeinterface java/util/Enumeration/nextElement()Ljava/lang/Object; 0
astore 2
L4:
iload 5
iconst_1
iadd
istore 6
iload 5
ifeq L7
L6:
aload 9
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L7:
aload 2
ifnonnull L10
L8:
aload 9
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
L9:
iload 6
istore 5
goto L3
L10:
aload 1
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 1
aload 2
iload 6
iconst_1
isub
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 7
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L11:
iload 6
istore 5
goto L3
L12:
aload 9
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L13:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
return
L2:
astore 2
L17:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 2
athrow
L5:
astore 2
goto L17
.limit locals 10
.limit stack 5
.end method
