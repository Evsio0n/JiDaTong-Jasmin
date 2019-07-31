.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;
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
aload 2
instanceof java/lang/reflect/GenericArrayType
ifeq L0
aload 2
checkcast java/lang/reflect/GenericArrayType
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
astore 3
aload 3
astore 2
aload 3
instanceof java/lang/reflect/TypeVariable
ifeq L1
aload 3
checkcast java/lang/reflect/TypeVariable
invokeinterface java/lang/reflect/TypeVariable/getBounds()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 2
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
aload 2
instanceof java/lang/Class
ifeq L2
aload 2
checkcast java/lang/Class
aload 3
invokeinterface java/util/List/size()I 0
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
checkcast [Ljava/lang/Object;
checkcast [Ljava/lang/Object;
astore 1
aload 3
aload 1
invokeinterface java/util/List/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
pop
aload 1
areturn
L2:
aload 3
invokeinterface java/util/List/toArray()[Ljava/lang/Object; 0
areturn
L0:
aload 1
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getFastMatchToken()I
bipush 12
ireturn
.limit locals 1
.limit stack 1
.end method
