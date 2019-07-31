.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/BigIntegerCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/BigIntegerCodec
dup
invokespecial com/alibaba/fastjson/serializer/BigIntegerCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/BigIntegerCodec/instance Lcom/alibaba/fastjson/serializer/BigIntegerCodec;
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
astore 1
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L0
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/numberString()Ljava/lang/String; 0
astore 0
aload 1
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
new java/math/BigInteger
dup
aload 0
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
areturn
L0:
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 0
aload 0
ifnonnull L1
aconst_null
areturn
L1:
aload 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
areturn
.limit locals 2
.limit stack 3
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 1
invokestatic com/alibaba/fastjson/serializer/BigIntegerCodec/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
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
return
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 1
aload 2
checkcast java/math/BigInteger
invokevirtual java/math/BigInteger/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method
