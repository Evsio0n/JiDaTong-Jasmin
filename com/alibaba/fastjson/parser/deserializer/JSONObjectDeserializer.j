.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;
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
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject()Lcom/alibaba/fastjson/JSONObject;
areturn
.limit locals 4
.limit stack 1
.end method

.method public getFastMatchToken()I
bipush 12
ireturn
.limit locals 1
.limit stack 1
.end method
