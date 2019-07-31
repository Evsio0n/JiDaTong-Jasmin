.bytecode 50.0
.class public final synchronized com/alipay/a/a/f
.super java/lang/Object

.field private static 'a' Ljava/util/List; signature "Ljava/util/List<Lcom/alipay/a/a/j;>;"

.method static <clinit>()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 0
aload 0
putstatic com/alipay/a/a/f/a Ljava/util/List;
aload 0
new com/alipay/a/a/l
dup
invokespecial com/alipay/a/a/l/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/f/a Ljava/util/List;
new com/alipay/a/a/d
dup
invokespecial com/alipay/a/a/d/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/f/a Ljava/util/List;
new com/alipay/a/a/c
dup
invokespecial com/alipay/a/a/c/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/f/a Ljava/util/List;
new com/alipay/a/a/h
dup
invokespecial com/alipay/a/a/h/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/f/a Ljava/util/List;
new com/alipay/a/a/b
dup
invokespecial com/alipay/a/a/b/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/f/a Ljava/util/List;
new com/alipay/a/a/a
dup
invokespecial com/alipay/a/a/a/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/f/a Ljava/util/List;
new com/alipay/a/a/g
dup
invokespecial com/alipay/a/a/g/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 1
.limit stack 3
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
invokestatic com/alipay/a/a/f/b(Ljava/lang/Object;)Ljava/lang/Object;
astore 0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokestatic com/alipay/a/b/a/a(Ljava/lang/Class;)Z
ifeq L1
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic org/json/alipay/c/c(Ljava/lang/String;)Ljava/lang/String;
areturn
L1:
ldc java/util/Collection
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L2
new org/json/alipay/b
dup
aload 0
checkcast java/util/List
invokespecial org/json/alipay/b/<init>(Ljava/util/Collection;)V
invokevirtual org/json/alipay/b/toString()Ljava/lang/String;
areturn
L2:
ldc java/util/Map
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L3
new org/json/alipay/c
dup
aload 0
checkcast java/util/Map
invokespecial org/json/alipay/c/<init>(Ljava/util/Map;)V
invokevirtual org/json/alipay/c/toString()Ljava/lang/String;
areturn
L3:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
ldc "Unsupported Class : "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 5
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
getstatic com/alipay/a/a/f/a Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alipay/a/a/j
astore 2
aload 2
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokeinterface com/alipay/a/a/j/a(Ljava/lang/Class;)Z 1
ifeq L1
aload 2
aload 0
invokeinterface com/alipay/a/a/j/a(Ljava/lang/Object;)Ljava/lang/Object; 1
astore 2
aload 2
ifnull L1
aload 2
areturn
L2:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
ldc "Unsupported Class : "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 5
.end method
