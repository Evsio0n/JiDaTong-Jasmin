.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ClassSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/ClassSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/ClassSerializer
dup
invokespecial com/alibaba/fastjson/serializer/ClassSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/ClassSerializer/instance Lcom/alibaba/fastjson/serializer/ClassSerializer;
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
checkcast java/lang/Class
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method
