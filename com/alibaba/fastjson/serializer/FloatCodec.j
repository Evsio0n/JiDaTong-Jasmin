.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/FloatCodec
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static 'instance' Lcom/alibaba/fastjson/serializer/FloatCodec;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/FloatCodec
dup
invokespecial com/alibaba/fastjson/serializer/FloatCodec/<init>()V
putstatic com/alibaba/fastjson/serializer/FloatCodec/instance Lcom/alibaba/fastjson/serializer/FloatCodec;
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
astore 2
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L0
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/numberString()Ljava/lang/String; 0
astore 0
aload 2
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
areturn
L0:
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_3
if_icmpne L1
aload 2
invokeinterface com/alibaba/fastjson/parser/JSONLexer/floatValue()F 0
fstore 1
aload 2
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
fload 1
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
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
invokestatic com/alibaba/fastjson/util/TypeUtils/castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
areturn
.limit locals 3
.limit stack 2
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 1
invokestatic com/alibaba/fastjson/serializer/FloatCodec/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
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
astore 4
aload 2
ifnonnull L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 4
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L2:
return
L1:
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 2
checkcast java/lang/Float
invokevirtual java/lang/Float/floatValue()F
fstore 5
fload 5
invokestatic java/lang/Float/isNaN(F)Z
ifeq L3
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L3:
fload 5
invokestatic java/lang/Float/isInfinite(F)Z
ifeq L4
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L4:
fload 5
invokestatic java/lang/Float/toString(F)Ljava/lang/String;
astore 3
aload 3
astore 2
aload 3
ldc ".0"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L5
aload 3
iconst_0
aload 3
invokevirtual java/lang/String/length()I
iconst_2
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L5:
aload 4
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
aload 4
bipush 70
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 6
.limit stack 4
.end method
