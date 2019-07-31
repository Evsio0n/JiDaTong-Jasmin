.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/CharArrayDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/CharArrayDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/CharArrayDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/CharArrayDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/CharArrayDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/CharArrayDeserializer;
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
iconst_4
if_icmpne L0
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 0
aload 1
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
invokevirtual java/lang/String/toCharArray()[C
areturn
L0:
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L1
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/integerValue()Ljava/lang/Number; 0
astore 0
aload 1
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/toCharArray()[C
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
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/String/toCharArray()[C
areturn
.limit locals 2
.limit stack 2
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 1
invokestatic com/alibaba/fastjson/parser/deserializer/CharArrayDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 1
.end method

.method public getFastMatchToken()I
iconst_4
ireturn
.limit locals 1
.limit stack 1
.end method
