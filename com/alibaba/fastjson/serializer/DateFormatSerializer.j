.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/DateFormatSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/DateFormatSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/DateFormatSerializer
dup
invokespecial com/alibaba/fastjson/serializer/DateFormatSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/DateFormatSerializer/instance Lcom/alibaba/fastjson/serializer/DateFormatSerializer;
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
aload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 2
checkcast java/text/SimpleDateFormat
invokevirtual java/text/SimpleDateFormat/toPattern()Ljava/lang/String;
astore 5
aload 3
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 4
if_acmpeq L1
aload 3
bipush 123
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 3
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 1
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
aload 3
bipush 44
ldc "val"
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
aload 3
bipush 125
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L1:
aload 3
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
.limit locals 6
.limit stack 4
.end method
