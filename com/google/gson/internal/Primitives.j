.bytecode 50.0
.class public final synchronized com/google/gson/internal/Primitives
.super java/lang/Object

.field private static final 'PRIMITIVE_TO_WRAPPER_TYPE' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"

.field private static final 'WRAPPER_TO_PRIMITIVE_TYPE' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"

.method static <clinit>()V
new java/util/HashMap
dup
bipush 16
invokespecial java/util/HashMap/<init>(I)V
astore 0
new java/util/HashMap
dup
bipush 16
invokespecial java/util/HashMap/<init>(I)V
astore 1
aload 0
aload 1
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
ldc java/lang/Boolean
invokestatic com/google/gson/internal/Primitives/add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
aload 1
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
ldc java/lang/Byte
invokestatic com/google/gson/internal/Primitives/add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
aload 1
getstatic java/lang/Character/TYPE Ljava/lang/Class;
ldc java/lang/Character
invokestatic com/google/gson/internal/Primitives/add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
aload 1
getstatic java/lang/Double/TYPE Ljava/lang/Class;
ldc java/lang/Double
invokestatic com/google/gson/internal/Primitives/add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
aload 1
getstatic java/lang/Float/TYPE Ljava/lang/Class;
ldc java/lang/Float
invokestatic com/google/gson/internal/Primitives/add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
aload 1
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
ldc java/lang/Integer
invokestatic com/google/gson/internal/Primitives/add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
aload 1
getstatic java/lang/Long/TYPE Ljava/lang/Class;
ldc java/lang/Long
invokestatic com/google/gson/internal/Primitives/add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
aload 1
getstatic java/lang/Short/TYPE Ljava/lang/Class;
ldc java/lang/Short
invokestatic com/google/gson/internal/Primitives/add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
aload 1
getstatic java/lang/Void/TYPE Ljava/lang/Class;
ldc java/lang/Void
invokestatic com/google/gson/internal/Primitives/add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
invokestatic java/util/Collections/unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
putstatic com/google/gson/internal/Primitives/PRIMITIVE_TO_WRAPPER_TYPE Ljava/util/Map;
aload 1
invokestatic java/util/Collections/unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
putstatic com/google/gson/internal/Primitives/WRAPPER_TO_PRIMITIVE_TYPE Ljava/util/Map;
return
.limit locals 2
.limit stack 4
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
.signature "(Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)V"
aload 0
aload 2
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
aload 3
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 4
.limit stack 3
.end method

.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
getstatic com/google/gson/internal/Primitives/PRIMITIVE_TO_WRAPPER_TYPE Ljava/util/Map;
aload 0
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isWrapperType(Ljava/lang/reflect/Type;)Z
getstatic com/google/gson/internal/Primitives/WRAPPER_TO_PRIMITIVE_TYPE Ljava/util/Map;
aload 0
invokestatic com/google/gson/internal/$Gson$Preconditions/checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static unwrap(Ljava/lang/Class;)Ljava/lang/Class;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/lang/Class<TT;>;"
getstatic com/google/gson/internal/Primitives/WRAPPER_TO_PRIMITIVE_TYPE Ljava/util/Map;
aload 0
invokestatic com/google/gson/internal/$Gson$Preconditions/checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Class
astore 1
aload 1
ifnonnull L0
aload 0
areturn
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public static wrap(Ljava/lang/Class;)Ljava/lang/Class;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/lang/Class<TT;>;"
getstatic com/google/gson/internal/Primitives/PRIMITIVE_TO_WRAPPER_TYPE Ljava/util/Map;
aload 0
invokestatic com/google/gson/internal/$Gson$Preconditions/checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Class
astore 1
aload 1
ifnonnull L0
aload 0
areturn
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method
