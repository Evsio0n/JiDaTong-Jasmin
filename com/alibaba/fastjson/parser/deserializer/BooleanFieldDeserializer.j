.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer
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
bipush 6
ireturn
.limit locals 1
.limit stack 1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
iconst_1
istore 6
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 3
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 6
if_icmpne L0
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
ifnonnull L1
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
getstatic java/lang/Boolean/TRUE Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L2:
return
L1:
aload 0
aload 2
iconst_1
invokevirtual com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/setValue(Ljava/lang/Object;Z)V
return
L0:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L3
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/intValue()I 0
istore 5
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
iload 5
iconst_1
if_icmpne L4
L5:
aload 2
ifnonnull L6
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
iload 6
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L4:
iconst_0
istore 6
goto L5
L6:
aload 0
aload 2
iload 6
invokevirtual com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/setValue(Ljava/lang/Object;Z)V
return
L3:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L7
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 0
invokevirtual com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/getFieldClass()Ljava/lang/Class;
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpeq L2
aload 2
ifnull L2
aload 0
aload 2
aconst_null
invokevirtual com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/String;)V
return
L7:
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 7
if_icmpne L8
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
ifnonnull L9
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
getstatic java/lang/Boolean/FALSE Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L9:
aload 0
aload 2
iconst_0
invokevirtual com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/setValue(Ljava/lang/Object;Z)V
return
L8:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
astore 1
aload 1
ifnonnull L10
aload 0
invokevirtual com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/getFieldClass()Ljava/lang/Class;
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpeq L2
L10:
aload 2
ifnonnull L11
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L11:
aload 0
aload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 7
.limit stack 3
.end method
