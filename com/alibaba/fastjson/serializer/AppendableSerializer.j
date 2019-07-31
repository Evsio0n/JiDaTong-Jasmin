.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/AppendableSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/AppendableSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/AppendableSerializer
dup
invokespecial com/alibaba/fastjson/serializer/AppendableSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/AppendableSerializer/instance Lcom/alibaba/fastjson/serializer/AppendableSerializer;
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
aload 2
ifnonnull L0
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 1
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullStringAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
ldc ""
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 1
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method
