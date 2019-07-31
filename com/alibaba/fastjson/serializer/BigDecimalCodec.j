.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/BigDecimalCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/BigDecimalCodec
dup
invokespecial com/alibaba/fastjson/serializer/BigDecimalCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/BigDecimalCodec/instance Lcom/alibaba/fastjson/serializer/BigDecimalCodec;
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

.method public static deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)TT;"
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 3
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L0
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/longValue()J 0
lstore 1
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
new java/math/BigDecimal
dup
lload 1
invokespecial java/math/BigDecimal/<init>(J)V
areturn
L0:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_3
if_icmpne L1
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/decimalValue()Ljava/math/BigDecimal; 0
astore 0
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
areturn
L1:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 0
aload 0
ifnonnull L2
aconst_null
areturn
L2:
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
areturn
.limit locals 4
.limit stack 4
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 1
invokestatic com/alibaba/fastjson/serializer/BigDecimalCodec/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 1
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
ifnonnull L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L2:
return
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 2
checkcast java/math/BigDecimal
astore 2
aload 1
aload 2
invokevirtual java/math/BigDecimal/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
aload 4
ldc java/math/BigDecimal
if_acmpeq L2
aload 2
invokevirtual java/math/BigDecimal/scale()I
ifne L2
aload 1
bipush 46
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 5
.limit stack 2
.end method
