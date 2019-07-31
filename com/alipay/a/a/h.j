.bytecode 50.0
.class public final synchronized com/alipay/a/a/h
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

.method private static a(Ljava/lang/reflect/Type;)Ljava/util/Map;
.signature "(Ljava/lang/reflect/Type;)Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
.catch java/lang/Exception from L0 to L1 using L2
L3:
aload 0
ldc java/util/Properties
if_acmpne L4
new java/util/Properties
dup
invokespecial java/util/Properties/<init>()V
areturn
L4:
aload 0
ldc java/util/Hashtable
if_acmpne L5
new java/util/Hashtable
dup
invokespecial java/util/Hashtable/<init>()V
areturn
L5:
aload 0
ldc java/util/IdentityHashMap
if_acmpne L6
new java/util/IdentityHashMap
dup
invokespecial java/util/IdentityHashMap/<init>()V
areturn
L6:
aload 0
ldc java/util/SortedMap
if_acmpeq L7
aload 0
ldc java/util/TreeMap
if_acmpne L8
L7:
new java/util/TreeMap
dup
invokespecial java/util/TreeMap/<init>()V
areturn
L8:
aload 0
ldc java/util/concurrent/ConcurrentMap
if_acmpeq L9
aload 0
ldc java/util/concurrent/ConcurrentHashMap
if_acmpne L10
L9:
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
areturn
L10:
aload 0
ldc java/util/Map
if_acmpeq L11
aload 0
ldc java/util/HashMap
if_acmpne L12
L11:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
areturn
L12:
aload 0
ldc java/util/LinkedHashMap
if_acmpne L13
new java/util/LinkedHashMap
dup
invokespecial java/util/LinkedHashMap/<init>()V
areturn
L13:
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L14
aload 0
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
astore 0
goto L3
L14:
aload 0
checkcast java/lang/Class
astore 1
aload 1
invokevirtual java/lang/Class/isInterface()Z
ifeq L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
ldc "unsupport type "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast java/util/Map
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
ldc "unsupport type "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 2
.limit stack 5
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
new java/util/TreeMap
dup
invokespecial java/util/TreeMap/<init>()V
astore 2
aload 1
checkcast java/util/Map
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
instanceof java/lang/String
ifne L2
new java/lang/IllegalArgumentException
dup
ldc "Map key must be String!"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 2
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokestatic com/alipay/a/a/f/b(Ljava/lang/Object;)Ljava/lang/Object;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L0
L1:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc org/json/alipay/c
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
aconst_null
areturn
L0:
aload 1
checkcast org/json/alipay/c
astore 1
aload 2
invokestatic com/alipay/a/a/h/a(Ljava/lang/reflect/Type;)Ljava/util/Map;
astore 3
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 2
checkcast java/lang/reflect/ParameterizedType
astore 2
aload 2
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 4
aload 2
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_1
aaload
astore 2
ldc java/lang/String
aload 4
if_acmpne L2
aload 1
invokevirtual org/json/alipay/c/a()Ljava/util/Iterator;
astore 4
L3:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 5
aload 2
checkcast java/lang/Class
invokestatic com/alipay/a/b/a/a(Ljava/lang/Class;)Z
ifeq L5
aload 3
aload 5
aload 1
aload 5
invokevirtual org/json/alipay/c/a(Ljava/lang/String;)Ljava/lang/Object;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L3
L5:
aload 3
aload 5
aload 1
aload 5
invokevirtual org/json/alipay/c/a(Ljava/lang/String;)Ljava/lang/Object;
aload 2
invokestatic com/alipay/a/a/e/a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L3
L2:
new java/lang/IllegalArgumentException
dup
ldc "Deserialize Map Key must be String.class"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
new java/lang/IllegalArgumentException
dup
ldc "Deserialize Map must be Generics!"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 3
areturn
.limit locals 6
.limit stack 4
.end method

.method public final a(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
ldc java/util/Map
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
