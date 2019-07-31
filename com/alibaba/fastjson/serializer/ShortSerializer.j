.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ShortSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/ShortSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/ShortSerializer
dup
invokespecial com/alibaba/fastjson/serializer/ShortSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/ShortSerializer/instance Lcom/alibaba/fastjson/serializer/ShortSerializer;
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
astore 3
aload 2
checkcast java/lang/Number
ifnonnull L0
aload 3
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 3
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L2:
return
L1:
aload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 3
aload 2
checkcast java/lang/Number
invokevirtual java/lang/Number/shortValue()S
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeInt(I)V
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
aload 3
bipush 83
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 5
.limit stack 2
.end method
