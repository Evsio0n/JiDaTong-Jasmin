.bytecode 50.0
.class public synchronized com/alibaba/fastjson/TypeReference
.super java/lang/Object
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class static final inner com/alibaba/fastjson/TypeReference$1

.field public static final 'LIST_STRING' Ljava/lang/reflect/Type;

.field private final 'type' Ljava/lang/reflect/Type;

.method static <clinit>()V
new com/alibaba/fastjson/TypeReference$1
dup
invokespecial com/alibaba/fastjson/TypeReference$1/<init>()V
invokevirtual com/alibaba/fastjson/TypeReference$1/getType()Ljava/lang/reflect/Type;
putstatic com/alibaba/fastjson/TypeReference/LIST_STRING Ljava/lang/reflect/Type;
return
.limit locals 0
.limit stack 2
.end method

.method protected <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getGenericSuperclass()Ljava/lang/reflect/Type;
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
putfield com/alibaba/fastjson/TypeReference/type Ljava/lang/reflect/Type;
return
.limit locals 1
.limit stack 3
.end method

.method public getType()Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/TypeReference/type Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method
