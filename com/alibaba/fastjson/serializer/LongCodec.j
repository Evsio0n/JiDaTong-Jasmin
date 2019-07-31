.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/LongCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/LongCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/LongCodec
dup
invokespecial com/alibaba/fastjson/serializer/LongCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/LongCodec/instance Lcom/alibaba/fastjson/serializer/LongCodec;
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

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 3
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L0
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/longValue()J 0
lstore 4
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 1
L1:
aload 1
astore 3
aload 2
ldc java/util/concurrent/atomic/AtomicLong
if_acmpne L2
new java/util/concurrent/atomic/AtomicLong
dup
aload 1
invokevirtual java/lang/Long/longValue()J
invokespecial java/util/concurrent/atomic/AtomicLong/<init>(J)V
astore 3
L2:
aload 3
areturn
L0:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
aload 1
ifnonnull L3
aconst_null
areturn
L3:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToLong(Ljava/lang/Object;)Ljava/lang/Long;
astore 1
goto L1
.limit locals 6
.limit stack 4
.end method

.method public getFastMatchToken()I
iconst_2
ireturn
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
aload 2
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 5
aload 3
lload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLong(J)V
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
lload 5
ldc2_w 2147483647L
lcmp
ifgt L2
lload 5
ldc2_w -2147483648L
lcmp
iflt L2
aload 4
ldc java/lang/Long
if_acmpeq L2
aload 3
bipush 76
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 7
.limit stack 4
.end method
