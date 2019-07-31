.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer
.super com/alibaba/fastjson/parser/deserializer/FieldDeserializer

.field private 'fieldValueDeserilizer' Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.method public <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)V"
aload 0
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/FieldDeserializer/<init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
return
.limit locals 4
.limit stack 3
.end method

.method public getFastMatchToken()I
aload 0
getfield com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/fieldValueDeserilizer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
ifnull L0
aload 0
getfield com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/fieldValueDeserilizer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
ireturn
L0:
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/fieldValueDeserilizer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
ifnonnull L0
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
putfield com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/fieldValueDeserilizer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
L0:
aload 3
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
aload 3
invokevirtual com/alibaba/fastjson/parser/ParseContext/setType(Ljava/lang/reflect/Type;)V
L1:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/fieldValueDeserilizer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
aload 1
aload 0
invokevirtual com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/getFieldType()Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
astore 3
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getResolveStatus()I
iconst_1
if_icmpne L2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
astore 2
aload 2
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V
aload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 1
iconst_0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
return
L2:
aload 2
ifnonnull L3
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L3:
aload 0
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 5
.limit stack 4
.end method
