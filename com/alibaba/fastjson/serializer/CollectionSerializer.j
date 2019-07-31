.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/CollectionSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/CollectionSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/CollectionSerializer
dup
invokespecial com/alibaba/fastjson/serializer/CollectionSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/CollectionSerializer/instance Lcom/alibaba/fastjson/serializer/CollectionSerializer;
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
.catch all from L12 to L13 using L2
.catch all from L14 to L15 using L2
.catch all from L16 to L17 using L2
.catch all from L18 to L19 using L5
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 9
aload 2
ifnonnull L20
aload 9
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L21
aload 9
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L21:
aload 9
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L20:
aconst_null
astore 8
aload 8
astore 7
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L22
aload 8
astore 7
aload 4
instanceof java/lang/reflect/ParameterizedType
ifeq L22
aload 4
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 7
L22:
aload 2
checkcast java/util/Collection
astore 8
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 4
aload 1
aload 4
aload 2
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
ldc java/util/HashSet
aload 8
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
if_acmpne L23
aload 9
ldc "Set"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L0:
aload 9
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
aload 8
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 2
L1:
iconst_0
istore 5
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L18
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 3
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
aload 3
ifnonnull L10
L8:
aload 9
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
L9:
iload 6
istore 5
goto L3
L23:
ldc java/util/TreeSet
aload 8
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
if_acmpne L0
aload 9
ldc "TreeSet"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
goto L0
L10:
aload 3
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 8
L11:
aload 8
ldc java/lang/Integer
if_acmpne L24
L12:
aload 9
aload 3
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeInt(I)V
L13:
iload 6
istore 5
goto L3
L24:
aload 8
ldc java/lang/Long
if_acmpne L16
L14:
aload 9
aload 3
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLong(J)V
aload 9
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L25
aload 9
bipush 76
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L15:
iload 6
istore 5
goto L3
L16:
aload 1
aload 8
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 1
aload 3
iload 6
iconst_1
isub
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 7
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L17:
iload 6
istore 5
goto L3
L18:
aload 9
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L19:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
return
L2:
astore 2
L26:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 2
athrow
L5:
astore 2
goto L26
L25:
iload 6
istore 5
goto L3
.limit locals 10
.limit stack 5
.end method
