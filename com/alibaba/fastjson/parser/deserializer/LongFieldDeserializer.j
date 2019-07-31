.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer
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
putfield com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer/fieldValueDeserilizer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
return
.limit locals 4
.limit stack 3
.end method

.method public getFastMatchToken()I
aload 0
getfield com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer/fieldValueDeserilizer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
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
iconst_2
if_icmpne L0
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/longValue()J 0
lstore 5
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
ifnonnull L1
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
lload 5
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L2:
return
L1:
aload 0
aload 2
lload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer/setValue(Ljava/lang/Object;J)V
return
L0:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L3
aconst_null
astore 1
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L4:
aload 1
ifnonnull L5
aload 0
invokevirtual com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer/getFieldClass()Ljava/lang/Class;
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpeq L2
L5:
aload 2
ifnonnull L6
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L3:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToLong(Ljava/lang/Object;)Ljava/lang/Long;
astore 1
goto L4
L6:
aload 0
aload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 7
.limit stack 4
.end method
