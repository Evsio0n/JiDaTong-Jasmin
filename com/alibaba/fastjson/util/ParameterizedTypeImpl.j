.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/ParameterizedTypeImpl
.super java/lang/Object
.implements java/lang/reflect/ParameterizedType

.field private final 'actualTypeArguments' [Ljava/lang/reflect/Type;

.field private final 'ownerType' Ljava/lang/reflect/Type;

.field private final 'rawType' Ljava/lang/reflect/Type;

.method public <init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/util/ParameterizedTypeImpl/actualTypeArguments [Ljava/lang/reflect/Type;
aload 0
aload 2
putfield com/alibaba/fastjson/util/ParameterizedTypeImpl/ownerType Ljava/lang/reflect/Type;
aload 0
aload 3
putfield com/alibaba/fastjson/util/ParameterizedTypeImpl/rawType Ljava/lang/reflect/Type;
return
.limit locals 4
.limit stack 2
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/util/ParameterizedTypeImpl/actualTypeArguments [Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/util/ParameterizedTypeImpl/ownerType Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRawType()Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/util/ParameterizedTypeImpl/rawType Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method
