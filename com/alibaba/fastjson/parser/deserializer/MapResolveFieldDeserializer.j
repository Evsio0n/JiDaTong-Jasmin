.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer
.super com/alibaba/fastjson/parser/deserializer/FieldDeserializer

.field private final 'key' Ljava/lang/String;

.field private final 'map' Ljava/util/Map;

.method public <init>(Ljava/util/Map;Ljava/lang/String;)V
aload 0
aconst_null
aconst_null
invokespecial com/alibaba/fastjson/parser/deserializer/FieldDeserializer/<init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 0
aload 2
putfield com/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer/key Ljava/lang/String;
aload 0
aload 1
putfield com/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer/map Ljava/util/Map;
return
.limit locals 3
.limit stack 3
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
return
.limit locals 5
.limit stack 0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
getfield com/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer/map Ljava/util/Map;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer/key Ljava/lang/String;
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 3
.limit stack 3
.end method
