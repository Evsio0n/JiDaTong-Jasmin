.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/LongArraySerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/LongArraySerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/LongArraySerializer
dup
invokespecial com/alibaba/fastjson/serializer/LongArraySerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/LongArraySerializer/instance Lcom/alibaba/fastjson/serializer/LongArraySerializer;
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
aload 2
checkcast [J
checkcast [J
astore 2
aload 1
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
iconst_0
istore 5
L2:
iload 5
aload 2
arraylength
if_icmpge L3
iload 5
ifeq L4
aload 1
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L4:
aload 1
aload 2
iload 5
laload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLong(J)V
iload 5
iconst_1
iadd
istore 5
goto L2
L3:
aload 1
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 6
.limit stack 3
.end method
