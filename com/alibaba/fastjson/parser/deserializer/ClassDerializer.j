.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/ClassDerializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/ClassDerializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/ClassDerializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/ClassDerializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/ClassDerializer/instance Lcom/alibaba/fastjson/parser/deserializer/ClassDerializer;
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
astore 1
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L0
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
areturn
L0:
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "expect className"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 1
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 2
aload 1
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/loadClass(Ljava/lang/String;)Ljava/lang/Class;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getFastMatchToken()I
iconst_4
ireturn
.limit locals 1
.limit stack 1
.end method
