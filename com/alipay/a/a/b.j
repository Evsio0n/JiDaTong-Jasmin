.bytecode 50.0
.class public final synchronized com/alipay/a/a/b
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

.method private static a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/util/Collection;
.signature "(Ljava/lang/Class<*>;Ljava/lang/reflect/Type;)Ljava/util/Collection<Ljava/lang/Object;>;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ldc java/util/AbstractCollection
if_acmpne L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L3:
aload 0
ldc java/util/HashSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L4
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
areturn
L4:
aload 0
ldc java/util/LinkedHashSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L5
new java/util/LinkedHashSet
dup
invokespecial java/util/LinkedHashSet/<init>()V
areturn
L5:
aload 0
ldc java/util/TreeSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L6
new java/util/TreeSet
dup
invokespecial java/util/TreeSet/<init>()V
areturn
L6:
aload 0
ldc java/util/ArrayList
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L7:
aload 0
ldc java/util/EnumSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L0
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L8
aload 1
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 0
L9:
aload 0
checkcast java/lang/Class
invokestatic java/util/EnumSet/noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
areturn
L8:
ldc java/lang/Object
astore 0
goto L9
L0:
aload 0
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast java/util/Collection
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
ldc "create instane error, class "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 5
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
checkcast java/lang/Iterable
invokeinterface java/lang/Iterable/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokestatic com/alipay/a/a/f/b(Ljava/lang/Object;)Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 2
areturn
.limit locals 3
.limit stack 2
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
aload 2
invokestatic com/alipay/a/b/a/a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
astore 4
aload 1
checkcast org/json/alipay/b
astore 1
aload 4
aload 2
invokestatic com/alipay/a/a/b/a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/util/Collection;
astore 4
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 2
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 2
L2:
iload 3
aload 1
invokevirtual org/json/alipay/b/a()I
if_icmpge L3
aload 4
aload 1
iload 3
invokevirtual org/json/alipay/b/a(I)Ljava/lang/Object;
aload 2
invokestatic com/alipay/a/a/e/a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L1:
new java/lang/IllegalArgumentException
dup
ldc "Does not support the implement for generics."
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 4
areturn
.limit locals 5
.limit stack 3
.end method

.method public final a(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
ldc java/util/Collection
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
