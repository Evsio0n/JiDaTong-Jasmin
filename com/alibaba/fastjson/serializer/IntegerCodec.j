.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/IntegerCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/IntegerCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/IntegerCodec
dup
invokespecial com/alibaba/fastjson/serializer/IntegerCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/IntegerCodec/instance Lcom/alibaba/fastjson/serializer/IntegerCodec;
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
bipush 8
if_icmpne L0
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aconst_null
astore 3
L1:
aload 3
areturn
L0:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L2
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
istore 4
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
astore 1
L3:
aload 1
astore 3
aload 2
ldc java/util/concurrent/atomic/AtomicInteger
if_acmpne L1
new java/util/concurrent/atomic/AtomicInteger
dup
aload 1
invokevirtual java/lang/Integer/intValue()I
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>(I)V
areturn
L2:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_3
if_icmpne L4
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/decimalValue()Ljava/math/BigDecimal; 0
astore 1
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 1
invokevirtual java/math/BigDecimal/intValue()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
astore 1
goto L3
L4:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
astore 1
goto L3
.limit locals 5
.limit stack 3
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
astore 1
aload 2
checkcast java/lang/Number
astore 2
aload 2
ifnonnull L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 1
aload 2
invokevirtual java/lang/Number/intValue()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeInt(I)V
return
.limit locals 5
.limit stack 2
.end method
