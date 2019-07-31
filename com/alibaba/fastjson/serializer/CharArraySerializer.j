.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/CharArraySerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/CharArraySerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/CharArraySerializer
dup
invokespecial com/alibaba/fastjson/serializer/CharArraySerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/CharArraySerializer/instance Lcom/alibaba/fastjson/serializer/CharArraySerializer;
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

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 1
aload 2
ifnonnull L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 1
new java/lang/String
dup
aload 2
checkcast [C
checkcast [C
invokespecial java/lang/String/<init>([C)V
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method
