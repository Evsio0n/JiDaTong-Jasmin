.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/JSONStreamAwareSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/JSONStreamAwareSerializer
dup
invokespecial com/alibaba/fastjson/serializer/JSONStreamAwareSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/JSONStreamAwareSerializer/instance Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;
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
checkcast com/alibaba/fastjson/JSONStreamAware
aload 1
invokeinterface com/alibaba/fastjson/JSONStreamAware/writeJSONString(Ljava/lang/Appendable;)V 1
return
.limit locals 5
.limit stack 2
.end method
