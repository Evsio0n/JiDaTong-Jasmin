.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/AtomicLongSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/AtomicLongSerializer
dup
invokespecial com/alibaba/fastjson/serializer/AtomicLongSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/AtomicLongSerializer/instance Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;
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
checkcast java/util/concurrent/atomic/AtomicLong
invokevirtual java/util/concurrent/atomic/AtomicLong/get()J
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLong(J)V
return
.limit locals 5
.limit stack 3
.end method
