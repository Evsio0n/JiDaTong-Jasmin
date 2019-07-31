.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/AtomicIntegerSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/AtomicIntegerSerializer
dup
invokespecial com/alibaba/fastjson/serializer/AtomicIntegerSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/AtomicIntegerSerializer/instance Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;
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
aload 2
checkcast java/util/concurrent/atomic/AtomicInteger
invokevirtual java/util/concurrent/atomic/AtomicInteger/get()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeInt(I)V
return
.limit locals 5
.limit stack 2
.end method
