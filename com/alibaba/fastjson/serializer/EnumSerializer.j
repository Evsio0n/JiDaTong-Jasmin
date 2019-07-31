.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/EnumSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/EnumSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/EnumSerializer
dup
invokespecial com/alibaba/fastjson/serializer/EnumSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/EnumSerializer/instance Lcom/alibaba/fastjson/serializer/EnumSerializer;
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
ifnonnull L0
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteEnumUsingToString Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
aload 2
checkcast java/lang/Enum
invokevirtual java/lang/Enum/name()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
return
L1:
aload 3
aload 2
checkcast java/lang/Enum
invokevirtual java/lang/Enum/ordinal()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeInt(I)V
return
.limit locals 5
.limit stack 2
.end method
