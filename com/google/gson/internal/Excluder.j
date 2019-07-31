.bytecode 50.0
.class public final synchronized com/google/gson/internal/Excluder
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.implements java/lang/Cloneable
.inner class inner com/google/gson/internal/Excluder$1

.field public static final 'DEFAULT' Lcom/google/gson/internal/Excluder;

.field private static final 'IGNORE_VERSIONS' D = -1.0D


.field private 'deserializationStrategies' Ljava/util/List; signature "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"

.field private 'modifiers' I

.field private 'requireExpose' Z

.field private 'serializationStrategies' Ljava/util/List; signature "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"

.field private 'serializeInnerClasses' Z

.field private 'version' D

.method static <clinit>()V
new com/google/gson/internal/Excluder
dup
invokespecial com/google/gson/internal/Excluder/<init>()V
putstatic com/google/gson/internal/Excluder/DEFAULT Lcom/google/gson/internal/Excluder;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1.0D
putfield com/google/gson/internal/Excluder/version D
aload 0
sipush 136
putfield com/google/gson/internal/Excluder/modifiers I
aload 0
iconst_1
putfield com/google/gson/internal/Excluder/serializeInnerClasses Z
aload 0
invokestatic java/util/Collections/emptyList()Ljava/util/List;
putfield com/google/gson/internal/Excluder/serializationStrategies Ljava/util/List;
aload 0
invokestatic java/util/Collections/emptyList()Ljava/util/List;
putfield com/google/gson/internal/Excluder/deserializationStrategies Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
ldc java/lang/Enum
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L0
aload 1
invokevirtual java/lang/Class/isAnonymousClass()Z
ifne L1
aload 1
invokevirtual java/lang/Class/isLocalClass()Z
ifeq L0
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
aload 1
invokevirtual java/lang/Class/isMemberClass()Z
ifeq L0
aload 0
aload 1
invokespecial com/google/gson/internal/Excluder/isStatic(Ljava/lang/Class;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private isStatic(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
aload 1
invokevirtual java/lang/Class/getModifiers()I
bipush 8
iand
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private isValidSince(Lcom/google/gson/annotations/Since;)Z
aload 1
ifnull L0
aload 1
invokeinterface com/google/gson/annotations/Since/value()D 0
aload 0
getfield com/google/gson/internal/Excluder/version D
dcmpl
ifle L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method private isValidUntil(Lcom/google/gson/annotations/Until;)Z
aload 1
ifnull L0
aload 1
invokeinterface com/google/gson/annotations/Until/value()D 0
aload 0
getfield com/google/gson/internal/Excluder/version D
dcmpg
ifgt L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method private isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
aload 0
aload 1
invokespecial com/google/gson/internal/Excluder/isValidSince(Lcom/google/gson/annotations/Since;)Z
ifeq L0
aload 0
aload 2
invokespecial com/google/gson/internal/Excluder/isValidUntil(Lcom/google/gson/annotations/Until;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method protected clone()Lcom/google/gson/internal/Excluder;
.catch java/lang/CloneNotSupportedException from L0 to L1 using L2
L0:
aload 0
invokespecial java/lang/Object/clone()Ljava/lang/Object;
checkcast com/google/gson/internal/Excluder
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic clone()Ljava/lang/Object;
.throws java/lang/CloneNotSupportedException
aload 0
invokevirtual com/google/gson/internal/Excluder/clone()Lcom/google/gson/internal/Excluder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
astore 5
aload 0
aload 5
iconst_1
invokevirtual com/google/gson/internal/Excluder/excludeClass(Ljava/lang/Class;Z)Z
istore 3
aload 0
aload 5
iconst_0
invokevirtual com/google/gson/internal/Excluder/excludeClass(Ljava/lang/Class;Z)Z
istore 4
iload 3
ifne L0
iload 4
ifne L0
aconst_null
areturn
L0:
new com/google/gson/internal/Excluder$1
dup
aload 0
iload 4
iload 3
aload 1
aload 2
invokespecial com/google/gson/internal/Excluder$1/<init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V
areturn
.limit locals 6
.limit stack 7
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/internal/Excluder;
aload 0
invokevirtual com/google/gson/internal/Excluder/clone()Lcom/google/gson/internal/Excluder;
astore 1
aload 1
iconst_0
putfield com/google/gson/internal/Excluder/serializeInnerClasses Z
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
.signature "(Ljava/lang/Class<*>;Z)Z"
aload 0
getfield com/google/gson/internal/Excluder/version D
ldc2_w -1.0D
dcmpl
ifeq L0
aload 0
aload 1
ldc com/google/gson/annotations/Since
invokevirtual java/lang/Class/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/google/gson/annotations/Since
aload 1
ldc com/google/gson/annotations/Until
invokevirtual java/lang/Class/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/google/gson/annotations/Until
invokespecial com/google/gson/internal/Excluder/isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
ifne L0
iconst_1
ireturn
L0:
aload 0
getfield com/google/gson/internal/Excluder/serializeInnerClasses Z
ifne L1
aload 0
aload 1
invokespecial com/google/gson/internal/Excluder/isInnerClass(Ljava/lang/Class;)Z
ifeq L1
iconst_1
ireturn
L1:
aload 0
aload 1
invokespecial com/google/gson/internal/Excluder/isAnonymousOrLocal(Ljava/lang/Class;)Z
ifeq L2
iconst_1
ireturn
L2:
iload 2
ifeq L3
aload 0
getfield com/google/gson/internal/Excluder/serializationStrategies Ljava/util/List;
astore 3
L4:
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L5:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/google/gson/ExclusionStrategy
aload 1
invokeinterface com/google/gson/ExclusionStrategy/shouldSkipClass(Ljava/lang/Class;)Z 1
ifeq L5
iconst_1
ireturn
L3:
aload 0
getfield com/google/gson/internal/Excluder/deserializationStrategies Ljava/util/List;
astore 3
goto L4
L6:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
aload 0
getfield com/google/gson/internal/Excluder/modifiers I
aload 1
invokevirtual java/lang/reflect/Field/getModifiers()I
iand
ifeq L0
iconst_1
ireturn
L0:
aload 0
getfield com/google/gson/internal/Excluder/version D
ldc2_w -1.0D
dcmpl
ifeq L1
aload 0
aload 1
ldc com/google/gson/annotations/Since
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/google/gson/annotations/Since
aload 1
ldc com/google/gson/annotations/Until
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/google/gson/annotations/Until
invokespecial com/google/gson/internal/Excluder/isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
ifne L1
iconst_1
ireturn
L1:
aload 1
invokevirtual java/lang/reflect/Field/isSynthetic()Z
ifeq L2
iconst_1
ireturn
L2:
aload 0
getfield com/google/gson/internal/Excluder/requireExpose Z
ifeq L3
aload 1
ldc com/google/gson/annotations/Expose
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/google/gson/annotations/Expose
astore 3
aload 3
ifnull L4
iload 2
ifeq L5
aload 3
invokeinterface com/google/gson/annotations/Expose/serialize()Z 0
ifne L3
L4:
iconst_1
ireturn
L5:
aload 3
invokeinterface com/google/gson/annotations/Expose/deserialize()Z 0
ifeq L4
L3:
aload 0
getfield com/google/gson/internal/Excluder/serializeInnerClasses Z
ifne L6
aload 0
aload 1
invokevirtual java/lang/reflect/Field/getType()Ljava/lang/Class;
invokespecial com/google/gson/internal/Excluder/isInnerClass(Ljava/lang/Class;)Z
ifeq L6
iconst_1
ireturn
L6:
aload 0
aload 1
invokevirtual java/lang/reflect/Field/getType()Ljava/lang/Class;
invokespecial com/google/gson/internal/Excluder/isAnonymousOrLocal(Ljava/lang/Class;)Z
ifeq L7
iconst_1
ireturn
L7:
iload 2
ifeq L8
aload 0
getfield com/google/gson/internal/Excluder/serializationStrategies Ljava/util/List;
astore 3
L9:
aload 3
invokeinterface java/util/List/isEmpty()Z 0
ifne L10
new com/google/gson/FieldAttributes
dup
aload 1
invokespecial com/google/gson/FieldAttributes/<init>(Ljava/lang/reflect/Field;)V
astore 1
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L11:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/google/gson/ExclusionStrategy
aload 1
invokeinterface com/google/gson/ExclusionStrategy/shouldSkipField(Lcom/google/gson/FieldAttributes;)Z 1
ifeq L11
iconst_1
ireturn
L8:
aload 0
getfield com/google/gson/internal/Excluder/deserializationStrategies Ljava/util/List;
astore 3
goto L9
L10:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;
aload 0
invokevirtual com/google/gson/internal/Excluder/clone()Lcom/google/gson/internal/Excluder;
astore 1
aload 1
iconst_1
putfield com/google/gson/internal/Excluder/requireExpose Z
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;
aload 0
invokevirtual com/google/gson/internal/Excluder/clone()Lcom/google/gson/internal/Excluder;
astore 4
iload 2
ifeq L0
aload 4
new java/util/ArrayList
dup
aload 0
getfield com/google/gson/internal/Excluder/serializationStrategies Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
putfield com/google/gson/internal/Excluder/serializationStrategies Ljava/util/List;
aload 4
getfield com/google/gson/internal/Excluder/serializationStrategies Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
iload 3
ifeq L1
aload 4
new java/util/ArrayList
dup
aload 0
getfield com/google/gson/internal/Excluder/deserializationStrategies Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
putfield com/google/gson/internal/Excluder/deserializationStrategies Ljava/util/List;
aload 4
getfield com/google/gson/internal/Excluder/deserializationStrategies Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public transient withModifiers([I)Lcom/google/gson/internal/Excluder;
aload 0
invokevirtual com/google/gson/internal/Excluder/clone()Lcom/google/gson/internal/Excluder;
astore 5
aload 5
iconst_0
putfield com/google/gson/internal/Excluder/modifiers I
aload 1
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 1
iload 2
iaload
istore 4
aload 5
aload 5
getfield com/google/gson/internal/Excluder/modifiers I
iload 4
ior
putfield com/google/gson/internal/Excluder/modifiers I
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 5
areturn
.limit locals 6
.limit stack 3
.end method

.method public withVersion(D)Lcom/google/gson/internal/Excluder;
aload 0
invokevirtual com/google/gson/internal/Excluder/clone()Lcom/google/gson/internal/Excluder;
astore 3
aload 3
dload 1
putfield com/google/gson/internal/Excluder/version D
aload 3
areturn
.limit locals 4
.limit stack 3
.end method
