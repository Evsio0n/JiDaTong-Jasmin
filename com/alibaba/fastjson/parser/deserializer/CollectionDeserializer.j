.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/CollectionDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/CollectionDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/CollectionDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/CollectionDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;
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

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
.catch java/lang/Exception from L0 to L1 using L2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L3
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aconst_null
areturn
L3:
aload 0
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/CollectionDeserializer/getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
astore 5
aload 5
ldc java/util/AbstractCollection
if_acmpne L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L5:
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L6
aload 2
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 2
L7:
aload 1
aload 2
aload 4
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
aload 4
areturn
L4:
aload 5
ldc java/util/HashSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L8
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 4
goto L5
L8:
aload 5
ldc java/util/LinkedHashSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L9
new java/util/LinkedHashSet
dup
invokespecial java/util/LinkedHashSet/<init>()V
astore 4
goto L5
L9:
aload 5
ldc java/util/TreeSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L10
new java/util/TreeSet
dup
invokespecial java/util/TreeSet/<init>()V
astore 4
goto L5
L10:
aload 5
ldc java/util/ArrayList
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L11
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
goto L5
L11:
aload 5
ldc java/util/EnumSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L0
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L12
aload 2
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 4
L13:
aload 4
checkcast java/lang/Class
invokestatic java/util/EnumSet/noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
astore 4
goto L5
L12:
ldc java/lang/Object
astore 4
goto L13
L0:
aload 5
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast java/util/Collection
astore 4
L1:
goto L5
L2:
astore 1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create instane error, class "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
ldc java/lang/Object
astore 2
goto L7
.limit locals 6
.limit stack 4
.end method

.method public getFastMatchToken()I
bipush 14
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
.signature "(Ljava/lang/reflect/Type;)Ljava/lang/Class<*>;"
aload 1
instanceof java/lang/Class
ifeq L0
aload 1
checkcast java/lang/Class
areturn
L0:
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 0
aload 1
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
invokevirtual com/alibaba/fastjson/parser/deserializer/CollectionDeserializer/getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
areturn
L1:
new com/alibaba/fastjson/JSONException
dup
ldc "TODO"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method
