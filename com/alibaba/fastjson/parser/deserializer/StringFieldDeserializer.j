.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/StringFieldDeserializer
.super com/alibaba/fastjson/parser/deserializer/FieldDeserializer

.field private final 'fieldValueDeserilizer' Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.method public <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)V"
aload 0
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/FieldDeserializer/<init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 0
aload 1
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
putfield com/alibaba/fastjson/parser/deserializer/StringFieldDeserializer/fieldValueDeserilizer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
return
.limit locals 4
.limit stack 3
.end method

.method public getFastMatchToken()I
aload 0
getfield com/alibaba/fastjson/parser/deserializer/StringFieldDeserializer/fieldValueDeserilizer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 3
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L0
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 1
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L1:
aload 2
ifnonnull L2
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/StringFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L0:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
aload 1
ifnonnull L3
aconst_null
astore 1
goto L1
L3:
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 1
goto L1
L2:
aload 0
aload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/StringFieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 3
.end method
