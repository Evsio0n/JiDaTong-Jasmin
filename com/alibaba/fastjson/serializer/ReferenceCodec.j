.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ReferenceCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/ReferenceCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/ReferenceCodec
dup
invokespecial com/alibaba/fastjson/serializer/ReferenceCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/ReferenceCodec/instance Lcom/alibaba/fastjson/serializer/ReferenceCodec;
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

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 2
checkcast java/lang/reflect/ParameterizedType
astore 2
aload 1
aload 2
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 1
aload 2
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
astore 2
aload 2
ldc java/util/concurrent/atomic/AtomicReference
if_acmpne L0
new java/util/concurrent/atomic/AtomicReference
dup
aload 1
invokespecial java/util/concurrent/atomic/AtomicReference/<init>(Ljava/lang/Object;)V
areturn
L0:
aload 2
ldc java/lang/ref/WeakReference
if_acmpne L1
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
areturn
L1:
aload 2
ldc java/lang/ref/SoftReference
if_acmpne L2
new java/lang/ref/SoftReference
dup
aload 1
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
areturn
L2:
new java/lang/UnsupportedOperationException
dup
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 3
.end method

.method public getFastMatchToken()I
bipush 12
ireturn
.limit locals 1
.limit stack 1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 2
instanceof java/util/concurrent/atomic/AtomicReference
ifeq L0
aload 2
checkcast java/util/concurrent/atomic/AtomicReference
invokevirtual java/util/concurrent/atomic/AtomicReference/get()Ljava/lang/Object;
astore 2
L1:
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
return
L0:
aload 2
checkcast java/lang/ref/Reference
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
astore 2
goto L1
.limit locals 5
.limit stack 2
.end method
