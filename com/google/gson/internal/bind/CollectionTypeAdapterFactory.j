.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/CollectionTypeAdapterFactory
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.inner class private static final Adapter inner com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter outer com/google/gson/internal/bind/CollectionTypeAdapterFactory

.field private final 'constructorConstructor' Lcom/google/gson/internal/ConstructorConstructor;

.method public <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/bind/CollectionTypeAdapterFactory/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
return
.limit locals 2
.limit stack 2
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
astore 3
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
astore 4
ldc java/util/Collection
aload 4
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L0
aconst_null
areturn
L0:
aload 3
aload 4
invokestatic com/google/gson/internal/$Gson$Types/getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
astore 3
new com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter
dup
aload 1
aload 3
aload 1
aload 3
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
aload 0
getfield com/google/gson/internal/bind/CollectionTypeAdapterFactory/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
aload 2
invokevirtual com/google/gson/internal/ConstructorConstructor/get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
invokespecial com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter/<init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
areturn
.limit locals 5
.limit stack 7
.end method
