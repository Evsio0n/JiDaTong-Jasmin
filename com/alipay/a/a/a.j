.bytecode 50.0
.class public final synchronized com/alipay/a/a/a
.super java/lang/Object
.implements com/alipay/a/a/i
.implements com/alipay/a/a/j

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
aload 1
checkcast [Ljava/lang/Object;
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 4
aload 1
iload 2
aaload
invokestatic com/alipay/a/a/f/b(Ljava/lang/Object;)Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
areturn
.limit locals 5
.limit stack 3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc org/json/alipay/b
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
aconst_null
astore 1
L1:
aload 1
areturn
L0:
aload 1
checkcast org/json/alipay/b
astore 5
aload 2
instanceof java/lang/reflect/GenericArrayType
ifeq L2
new java/lang/IllegalArgumentException
dup
ldc "Does not support generic array!"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 2
checkcast java/lang/Class
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
astore 6
aload 5
invokevirtual org/json/alipay/b/a()I
istore 4
aload 6
iload 4
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
astore 2
iconst_0
istore 3
L3:
aload 2
astore 1
iload 3
iload 4
if_icmpge L1
aload 2
iload 3
aload 5
iload 3
invokevirtual org/json/alipay/b/a(I)Ljava/lang/Object;
aload 6
invokestatic com/alipay/a/a/e/a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
invokestatic java/lang/reflect/Array/set(Ljava/lang/Object;ILjava/lang/Object;)V
iload 3
iconst_1
iadd
istore 3
goto L3
.limit locals 7
.limit stack 4
.end method

.method public final a(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
aload 1
invokevirtual java/lang/Class/isArray()Z
ireturn
.limit locals 2
.limit stack 1
.end method
