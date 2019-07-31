.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer;
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
new com/alibaba/fastjson/JSONArray
dup
invokespecial com/alibaba/fastjson/JSONArray/<init>()V
astore 2
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/util/Collection;)V
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public getFastMatchToken()I
bipush 14
ireturn
.limit locals 1
.limit stack 1
.end method
