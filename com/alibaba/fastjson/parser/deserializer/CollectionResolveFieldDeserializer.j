.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer
.super com/alibaba/fastjson/parser/deserializer/FieldDeserializer

.field private final 'collection' Ljava/util/Collection;

.method public <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Collection;)V
aload 0
aconst_null
aconst_null
invokespecial com/alibaba/fastjson/parser/deserializer/FieldDeserializer/<init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 0
aload 2
putfield com/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer/collection Ljava/util/Collection;
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
getfield com/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer/collection Ljava/util/Collection;
aload 2
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 3
.limit stack 2
.end method
