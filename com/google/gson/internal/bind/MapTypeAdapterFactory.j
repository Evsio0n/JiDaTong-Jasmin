.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/MapTypeAdapterFactory
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.inner class private final Adapter inner com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter outer com/google/gson/internal/bind/MapTypeAdapterFactory

.field private final 'complexMapKeySerialization' Z

.field private final 'constructorConstructor' Lcom/google/gson/internal/ConstructorConstructor;

.method public <init>(Lcom/google/gson/internal/ConstructorConstructor;Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/bind/MapTypeAdapterFactory/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
aload 0
iload 2
putfield com/google/gson/internal/bind/MapTypeAdapterFactory/complexMapKeySerialization Z
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$000(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;)Z
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory/complexMapKeySerialization Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private getKeyAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter;
.signature "(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter<*>;"
aload 2
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpeq L0
aload 2
ldc java/lang/Boolean
if_acmpne L1
L0:
getstatic com/google/gson/internal/bind/TypeAdapters/BOOLEAN_AS_STRING Lcom/google/gson/TypeAdapter;
areturn
L1:
aload 1
aload 2
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
areturn
.limit locals 3
.limit stack 2
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
astore 3
ldc java/util/Map
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L0
aconst_null
areturn
L0:
aload 3
aload 3
invokestatic com/google/gson/internal/$Gson$Types/getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
invokestatic com/google/gson/internal/$Gson$Types/getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
astore 3
aload 0
aload 1
aload 3
iconst_0
aaload
invokespecial com/google/gson/internal/bind/MapTypeAdapterFactory/getKeyAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter;
astore 4
aload 1
aload 3
iconst_1
aaload
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
astore 5
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
aload 2
invokevirtual com/google/gson/internal/ConstructorConstructor/get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
astore 2
new com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter
dup
aload 0
aload 1
aload 3
iconst_0
aaload
aload 4
aload 3
iconst_1
aaload
aload 5
aload 2
invokespecial com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/<init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
areturn
.limit locals 6
.limit stack 9
.end method
