.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer
.super com/alibaba/fastjson/parser/deserializer/FieldDeserializer

.field private 'deserializer' Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private 'itemFastMatchToken' I

.field private final 'itemType' Ljava/lang/reflect/Type;

.method public <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)V"
aload 0
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/FieldDeserializer/<init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 0
invokevirtual com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/getFieldType()Ljava/lang/reflect/Type;
instanceof java/lang/reflect/ParameterizedType
ifeq L0
aload 0
aload 0
invokevirtual com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/getFieldType()Ljava/lang/reflect/Type;
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
putfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/itemType Ljava/lang/reflect/Type;
return
L0:
aload 0
ldc java/lang/Object
putfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/itemType Ljava/lang/reflect/Type;
return
.limit locals 4
.limit stack 3
.end method

.method public getFastMatchToken()I
bipush 14
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/itemType Ljava/lang/reflect/Type;
astore 11
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/deserializer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 10
aload 11
astore 9
aload 10
astore 8
aload 11
instanceof java/lang/reflect/TypeVariable
ifeq L0
aload 11
astore 9
aload 10
astore 8
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L0
aload 11
checkcast java/lang/reflect/TypeVariable
astore 9
aload 2
checkcast java/lang/reflect/ParameterizedType
astore 12
aconst_null
astore 8
aload 12
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
instanceof java/lang/Class
ifeq L1
aload 12
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
checkcast java/lang/Class
astore 8
L1:
iconst_m1
istore 6
iload 6
istore 5
aload 8
ifnull L2
iconst_0
istore 4
aload 8
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
arraylength
istore 7
L3:
iload 6
istore 5
iload 4
iload 7
if_icmpge L2
aload 8
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
iload 4
aaload
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
aload 9
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
iload 4
istore 5
L2:
aload 11
astore 9
aload 10
astore 8
iload 5
iconst_m1
if_icmpeq L0
aload 12
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iload 5
aaload
astore 11
aload 11
astore 9
aload 10
astore 8
aload 11
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/itemType Ljava/lang/reflect/Type;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
aload 11
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 8
aload 11
astore 9
L0:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 10
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 14
if_icmpeq L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "exepct '[', but "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 3
astore 1
aload 2
ifnull L6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", type : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L6:
new com/alibaba/fastjson/JSONException
dup
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
iload 4
iconst_1
iadd
istore 4
goto L3
L5:
aload 8
astore 2
aload 8
ifnonnull L7
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
aload 9
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 2
aload 0
aload 2
putfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/deserializer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
aload 0
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/deserializer Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/getFastMatchToken()I 0
putfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/itemFastMatchToken I
L7:
aload 10
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/itemFastMatchToken I
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
iconst_0
istore 4
L8:
aload 10
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifeq L9
L10:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L9
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
goto L10
L9:
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 15
if_icmpne L11
aload 10
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
return
L11:
aload 3
aload 2
aload 1
aload 9
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/checkListResolve(Ljava/util/Collection;)V
aload 10
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L12
aload 10
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/itemFastMatchToken I
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L12:
iload 4
iconst_1
iadd
istore 4
goto L8
.limit locals 13
.limit stack 5
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L0
aload 0
aload 2
aconst_null
invokevirtual com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/String;)V
return
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 6
aload 1
aload 6
aload 2
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
pop
aload 0
aload 1
aload 3
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
aload 1
aload 6
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 2
ifnonnull L1
aload 4
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 5
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L1:
aload 0
aload 2
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 7
.limit stack 4
.end method
