.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer
.super com/alibaba/fastjson/parser/deserializer/FieldDeserializer

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
iconst_2
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
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
istore 5
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
ifnonnull L1
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L2:
return
L1:
aload 0
aload 2
iload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer/setValue(Ljava/lang/Object;I)V
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
invokevirtual com/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer/getFieldClass()Ljava/lang/Class;
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpeq L2
L5:
aload 2
ifnonnull L6
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L3:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
astore 1
goto L4
L6:
aload 0
aload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 6
.limit stack 3
.end method
