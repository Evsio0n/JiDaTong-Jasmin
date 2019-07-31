.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/JSONAwareSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/JSONAwareSerializer
dup
invokespecial com/alibaba/fastjson/serializer/JSONAwareSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/JSONAwareSerializer/instance Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;
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
checkcast com/alibaba/fastjson/JSONAware
invokeinterface com/alibaba/fastjson/JSONAware/toJSONString()Ljava/lang/String; 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method
