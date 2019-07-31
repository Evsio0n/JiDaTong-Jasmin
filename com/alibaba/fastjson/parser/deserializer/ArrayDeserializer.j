.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/ArrayDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/ArrayDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/ArrayDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/ArrayDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;
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

.method private toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/JSONArray;)TT;"
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
invokevirtual com/alibaba/fastjson/JSONArray/size()I
istore 7
aload 2
iload 7
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
astore 12
iconst_0
istore 4
L1:
iload 4
iload 7
if_icmpge L2
aload 3
iload 4
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
astore 11
aload 11
aload 3
if_acmpne L3
aload 12
iload 4
aload 12
invokestatic java/lang/reflect/Array/set(Ljava/lang/Object;ILjava/lang/Object;)V
L4:
iload 4
iconst_1
iadd
istore 4
goto L1
L3:
aload 2
invokevirtual java/lang/Class/isArray()Z
ifeq L5
aload 2
aload 11
invokevirtual java/lang/Class/isInstance(Ljava/lang/Object;)Z
ifeq L6
aload 11
astore 9
L7:
aload 12
iload 4
aload 9
invokestatic java/lang/reflect/Array/set(Ljava/lang/Object;ILjava/lang/Object;)V
goto L4
L6:
aload 0
aload 1
aload 2
aload 11
checkcast com/alibaba/fastjson/JSONArray
invokespecial com/alibaba/fastjson/parser/deserializer/ArrayDeserializer/toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
astore 9
goto L7
L5:
aconst_null
astore 10
aload 10
astore 9
aload 11
instanceof com/alibaba/fastjson/JSONArray
ifeq L8
iconst_0
istore 6
aload 11
checkcast com/alibaba/fastjson/JSONArray
astore 13
aload 13
invokevirtual com/alibaba/fastjson/JSONArray/size()I
istore 8
iconst_0
istore 5
L9:
iload 5
iload 8
if_icmpge L10
aload 13
iload 5
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
aload 3
if_acmpne L11
aload 13
iload 4
aload 12
invokevirtual com/alibaba/fastjson/JSONArray/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
iconst_1
istore 6
L11:
iload 5
iconst_1
iadd
istore 5
goto L9
L10:
aload 10
astore 9
iload 6
ifeq L8
aload 13
invokevirtual com/alibaba/fastjson/JSONArray/toArray()[Ljava/lang/Object;
astore 9
L8:
aload 9
astore 10
aload 9
ifnonnull L12
aload 11
aload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
astore 10
L12:
aload 12
iload 4
aload 10
invokestatic java/lang/reflect/Array/set(Ljava/lang/Object;ILjava/lang/Object;)V
goto L4
L2:
aload 3
aload 12
invokevirtual com/alibaba/fastjson/JSONArray/setRelatedArray(Ljava/lang/Object;)V
aload 3
aload 2
invokevirtual com/alibaba/fastjson/JSONArray/setComponentType(Ljava/lang/reflect/Type;)V
aload 12
areturn
.limit locals 14
.limit stack 4
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 5
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L0
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aconst_null
areturn
L0:
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L1
aload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/bytesValue()[B 0
astore 1
aload 5
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 1
areturn
L1:
aload 2
instanceof java/lang/reflect/GenericArrayType
ifeq L2
aload 2
checkcast java/lang/reflect/GenericArrayType
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
astore 2
aload 2
instanceof java/lang/reflect/TypeVariable
ifeq L3
aload 2
checkcast java/lang/reflect/TypeVariable
astore 6
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/ParseContext/getType()Ljava/lang/reflect/Type;
astore 2
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L4
aload 2
checkcast java/lang/reflect/ParameterizedType
astore 7
aload 7
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
astore 8
aconst_null
astore 5
aconst_null
astore 2
aload 8
instanceof java/lang/Class
ifeq L5
aload 8
checkcast java/lang/Class
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
astore 8
iconst_0
istore 4
L6:
aload 2
astore 5
iload 4
aload 8
arraylength
if_icmpge L5
aload 8
iload 4
aaload
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
aload 6
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 7
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iload 4
aaload
astore 2
L7:
iload 4
iconst_1
iadd
istore 4
goto L6
L5:
aload 5
instanceof java/lang/Class
ifeq L8
aload 5
checkcast java/lang/Class
astore 2
L9:
new com/alibaba/fastjson/JSONArray
dup
invokespecial com/alibaba/fastjson/JSONArray/<init>()V
astore 5
aload 1
aload 2
aload 5
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
aload 0
aload 1
aload 2
aload 5
invokespecial com/alibaba/fastjson/parser/deserializer/ArrayDeserializer/toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
areturn
L8:
ldc java/lang/Object
astore 2
goto L9
L4:
ldc java/lang/Object
astore 2
goto L9
L3:
aload 2
checkcast java/lang/Class
astore 2
goto L9
L2:
aload 2
checkcast java/lang/Class
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
astore 2
goto L9
.limit locals 9
.limit stack 4
.end method

.method public getFastMatchToken()I
bipush 14
ireturn
.limit locals 1
.limit stack 1
.end method
