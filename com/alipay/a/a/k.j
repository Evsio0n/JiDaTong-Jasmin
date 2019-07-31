.bytecode 50.0
.class public final synchronized com/alipay/a/a/k
.super java/lang/Object
.implements com/alipay/a/a/i

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
iconst_0
istore 3
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc org/json/alipay/b
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
aconst_null
areturn
L0:
aload 1
checkcast org/json/alipay/b
astore 4
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 5
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 2
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 1
L2:
iload 3
aload 4
invokevirtual org/json/alipay/b/a()I
if_icmpge L3
aload 5
aload 4
iload 3
invokevirtual org/json/alipay/b/a(I)Ljava/lang/Object;
aload 1
invokestatic com/alipay/a/a/e/a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L1:
ldc java/lang/Object
astore 1
goto L2
L3:
aload 5
areturn
.limit locals 6
.limit stack 3
.end method

.method public final a(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
ldc java/util/Set
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
