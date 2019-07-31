.bytecode 50.0
.class public final synchronized com/alipay/a/a/e
.super java/lang/Object

.field static 'a' Ljava/util/List; signature "Ljava/util/List<Lcom/alipay/a/a/i;>;"

.method static <clinit>()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 0
aload 0
putstatic com/alipay/a/a/e/a Ljava/util/List;
aload 0
new com/alipay/a/a/l
dup
invokespecial com/alipay/a/a/l/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/e/a Ljava/util/List;
new com/alipay/a/a/d
dup
invokespecial com/alipay/a/a/d/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/e/a Ljava/util/List;
new com/alipay/a/a/c
dup
invokespecial com/alipay/a/a/c/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/e/a Ljava/util/List;
new com/alipay/a/a/h
dup
invokespecial com/alipay/a/a/h/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/e/a Ljava/util/List;
new com/alipay/a/a/k
dup
invokespecial com/alipay/a/a/k/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/e/a Ljava/util/List;
new com/alipay/a/a/b
dup
invokespecial com/alipay/a/a/b/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/e/a Ljava/util/List;
new com/alipay/a/a/a
dup
invokespecial com/alipay/a/a/a/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/alipay/a/a/e/a Ljava/util/List;
new com/alipay/a/a/g
dup
invokespecial com/alipay/a/a/g/<init>()V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 1
.limit stack 3
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Object;Ljava/lang/reflect/Type;)TT;"
getstatic com/alipay/a/a/e/a Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alipay/a/a/i
astore 3
aload 3
aload 1
invokestatic com/alipay/a/b/a/a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
invokeinterface com/alipay/a/a/i/a(Ljava/lang/Class;)Z 1
ifeq L0
aload 3
aload 0
aload 1
invokeinterface com/alipay/a/a/i/a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object; 2
astore 3
aload 3
ifnull L0
aload 3
areturn
L1:
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 0
aload 0
ldc "["
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L2
aload 0
ldc "]"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L2
new org/json/alipay/b
dup
aload 0
invokespecial org/json/alipay/b/<init>(Ljava/lang/String;)V
aload 1
invokestatic com/alipay/a/a/e/a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
L2:
aload 0
ldc "{"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L3
aload 0
ldc "}"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L3
new org/json/alipay/c
dup
aload 0
invokespecial org/json/alipay/c/<init>(Ljava/lang/String;)V
aload 1
invokestatic com/alipay/a/a/e/a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
L3:
aload 0
aload 1
invokestatic com/alipay/a/a/e/a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 3
.end method
