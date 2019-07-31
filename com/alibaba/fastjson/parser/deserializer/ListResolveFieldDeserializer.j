.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer
.super com/alibaba/fastjson/parser/deserializer/FieldDeserializer

.field private final 'index' I

.field private final 'list' Ljava/util/List;

.field private final 'parser' Lcom/alibaba/fastjson/parser/DefaultJSONParser;

.method public <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V
aload 0
aconst_null
aconst_null
invokespecial com/alibaba/fastjson/parser/deserializer/FieldDeserializer/<init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 0
iload 3
putfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/index I
aload 0
aload 2
putfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/list Ljava/util/List;
return
.limit locals 4
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
getfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/list Ljava/util/List;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/index I
aload 2
invokeinterface java/util/List/set(ILjava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/list Ljava/util/List;
instanceof com/alibaba/fastjson/JSONArray
ifeq L0
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/list Ljava/util/List;
checkcast com/alibaba/fastjson/JSONArray
astore 1
aload 1
invokevirtual com/alibaba/fastjson/JSONArray/getRelatedArray()Ljava/lang/Object;
astore 3
aload 3
ifnull L0
aload 3
invokestatic java/lang/reflect/Array/getLength(Ljava/lang/Object;)I
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/index I
if_icmple L0
aload 1
invokevirtual com/alibaba/fastjson/JSONArray/getComponentType()Ljava/lang/reflect/Type;
ifnull L1
aload 2
aload 1
invokevirtual com/alibaba/fastjson/JSONArray/getComponentType()Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
astore 1
L2:
aload 3
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer/index I
aload 1
invokestatic java/lang/reflect/Array/set(Ljava/lang/Object;ILjava/lang/Object;)V
L0:
return
L1:
aload 2
astore 1
goto L2
.limit locals 4
.limit stack 3
.end method
