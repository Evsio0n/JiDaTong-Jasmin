.bytecode 50.0
.class public final synchronized com/google/gson/internal/ConstructorConstructor
.super java/lang/Object
.inner class inner com/google/gson/internal/ConstructorConstructor$1
.inner class inner com/google/gson/internal/ConstructorConstructor$10
.inner class inner com/google/gson/internal/ConstructorConstructor$11
.inner class inner com/google/gson/internal/ConstructorConstructor$12
.inner class inner com/google/gson/internal/ConstructorConstructor$2
.inner class inner com/google/gson/internal/ConstructorConstructor$3
.inner class inner com/google/gson/internal/ConstructorConstructor$4
.inner class inner com/google/gson/internal/ConstructorConstructor$5
.inner class inner com/google/gson/internal/ConstructorConstructor$6
.inner class inner com/google/gson/internal/ConstructorConstructor$7
.inner class inner com/google/gson/internal/ConstructorConstructor$8
.inner class inner com/google/gson/internal/ConstructorConstructor$9

.field private final 'instanceCreators' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;"

.method public <init>(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/ConstructorConstructor/instanceCreators Ljava/util/Map;
return
.limit locals 2
.limit stack 2
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;"
.catch java/lang/NoSuchMethodException from L0 to L1 using L2
.catch java/lang/NoSuchMethodException from L1 to L3 using L2
L0:
aload 1
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
astore 1
aload 1
invokevirtual java/lang/reflect/Constructor/isAccessible()Z
ifne L1
aload 1
iconst_1
invokevirtual java/lang/reflect/Constructor/setAccessible(Z)V
L1:
new com/google/gson/internal/ConstructorConstructor$3
dup
aload 0
aload 1
invokespecial com/google/gson/internal/ConstructorConstructor$3/<init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
astore 1
L3:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;"
ldc java/util/Collection
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L0
ldc java/util/SortedSet
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L1
new com/google/gson/internal/ConstructorConstructor$4
dup
aload 0
invokespecial com/google/gson/internal/ConstructorConstructor$4/<init>(Lcom/google/gson/internal/ConstructorConstructor;)V
areturn
L1:
ldc java/util/EnumSet
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L2
new com/google/gson/internal/ConstructorConstructor$5
dup
aload 0
aload 1
invokespecial com/google/gson/internal/ConstructorConstructor$5/<init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V
areturn
L2:
ldc java/util/Set
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L3
new com/google/gson/internal/ConstructorConstructor$6
dup
aload 0
invokespecial com/google/gson/internal/ConstructorConstructor$6/<init>(Lcom/google/gson/internal/ConstructorConstructor;)V
areturn
L3:
ldc java/util/Queue
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L4
new com/google/gson/internal/ConstructorConstructor$7
dup
aload 0
invokespecial com/google/gson/internal/ConstructorConstructor$7/<init>(Lcom/google/gson/internal/ConstructorConstructor;)V
areturn
L4:
new com/google/gson/internal/ConstructorConstructor$8
dup
aload 0
invokespecial com/google/gson/internal/ConstructorConstructor$8/<init>(Lcom/google/gson/internal/ConstructorConstructor;)V
areturn
L0:
ldc java/util/Map
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L5
ldc java/util/SortedMap
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L6
new com/google/gson/internal/ConstructorConstructor$9
dup
aload 0
invokespecial com/google/gson/internal/ConstructorConstructor$9/<init>(Lcom/google/gson/internal/ConstructorConstructor;)V
areturn
L6:
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L7
ldc java/lang/String
aload 1
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L7
new com/google/gson/internal/ConstructorConstructor$10
dup
aload 0
invokespecial com/google/gson/internal/ConstructorConstructor$10/<init>(Lcom/google/gson/internal/ConstructorConstructor;)V
areturn
L7:
new com/google/gson/internal/ConstructorConstructor$11
dup
aload 0
invokespecial com/google/gson/internal/ConstructorConstructor$11/<init>(Lcom/google/gson/internal/ConstructorConstructor;)V
areturn
L5:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;Ljava/lang/Class<-TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;"
new com/google/gson/internal/ConstructorConstructor$12
dup
aload 0
aload 2
aload 1
invokespecial com/google/gson/internal/ConstructorConstructor$12/<init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
areturn
.limit locals 3
.limit stack 5
.end method

.method public get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/internal/ObjectConstructor<TT;>;"
aload 1
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
astore 3
aload 1
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
astore 4
aload 0
getfield com/google/gson/internal/ConstructorConstructor/instanceCreators Ljava/util/Map;
aload 3
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/google/gson/InstanceCreator
astore 1
aload 1
ifnull L0
new com/google/gson/internal/ConstructorConstructor$1
dup
aload 0
aload 1
aload 3
invokespecial com/google/gson/internal/ConstructorConstructor$1/<init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
astore 1
L1:
aload 1
areturn
L0:
aload 0
getfield com/google/gson/internal/ConstructorConstructor/instanceCreators Ljava/util/Map;
aload 4
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/google/gson/InstanceCreator
astore 1
aload 1
ifnull L2
new com/google/gson/internal/ConstructorConstructor$2
dup
aload 0
aload 1
aload 3
invokespecial com/google/gson/internal/ConstructorConstructor$2/<init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
areturn
L2:
aload 0
aload 4
invokespecial com/google/gson/internal/ConstructorConstructor/newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
astore 2
aload 2
astore 1
aload 2
ifnonnull L1
aload 0
aload 3
aload 4
invokespecial com/google/gson/internal/ConstructorConstructor/newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
astore 1
aload 1
ifnull L3
aload 1
areturn
L3:
aload 0
aload 3
aload 4
invokespecial com/google/gson/internal/ConstructorConstructor/newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
areturn
.limit locals 5
.limit stack 5
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/google/gson/internal/ConstructorConstructor/instanceCreators Ljava/util/Map;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
