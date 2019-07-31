.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/AtomicBooleanSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/AtomicBooleanSerializer
dup
invokespecial com/alibaba/fastjson/serializer/AtomicBooleanSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/AtomicBooleanSerializer/instance Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;
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
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 1
aload 2
checkcast java/util/concurrent/atomic/AtomicBoolean
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ifeq L0
aload 1
ldc "true"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
L0:
aload 1
ldc "false"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
.limit locals 5
.limit stack 2
.end method
