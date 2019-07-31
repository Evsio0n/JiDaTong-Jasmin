.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/ReflectiveTypeAdapterFactory
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.inner class inner com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1
.inner class public static final Adapter inner com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter outer com/google/gson/internal/bind/ReflectiveTypeAdapterFactory
.inner class static abstract BoundField inner com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField outer com/google/gson/internal/bind/ReflectiveTypeAdapterFactory

.field private final 'constructorConstructor' Lcom/google/gson/internal/ConstructorConstructor;

.field private final 'excluder' Lcom/google/gson/internal/Excluder;

.field private final 'fieldNamingPolicy' Lcom/google/gson/FieldNamingStrategy;

.method public <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
aload 0
aload 2
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/fieldNamingPolicy Lcom/google/gson/FieldNamingStrategy;
aload 0
aload 3
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/excluder Lcom/google/gson/internal/Excluder;
return
.limit locals 4
.limit stack 2
.end method

.method private createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.signature "(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken<*>;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
new com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1
dup
aload 0
aload 3
iload 5
iload 6
aload 1
aload 4
aload 2
aload 4
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
invokestatic com/google/gson/internal/Primitives/isPrimitive(Ljava/lang/reflect/Type;)Z
invokespecial com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/<init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V
areturn
.limit locals 7
.limit stack 10
.end method

.method private getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
.signature "(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Class<*>;)Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
new java/util/LinkedHashMap
dup
invokespecial java/util/LinkedHashMap/<init>()V
astore 8
aload 3
invokevirtual java/lang/Class/isInterface()Z
ifeq L0
L1:
aload 8
areturn
L0:
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
astore 9
L2:
aload 3
ldc java/lang/Object
if_acmpeq L1
aload 3
invokevirtual java/lang/Class/getDeclaredFields()[Ljava/lang/reflect/Field;
astore 10
aload 10
arraylength
istore 5
iconst_0
istore 4
L3:
iload 4
iload 5
if_icmpge L4
aload 10
iload 4
aaload
astore 11
aload 0
aload 11
iconst_1
invokevirtual com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/excludeField(Ljava/lang/reflect/Field;Z)Z
istore 6
aload 0
aload 11
iconst_0
invokevirtual com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/excludeField(Ljava/lang/reflect/Field;Z)Z
istore 7
iload 6
ifne L5
iload 7
ifne L5
L6:
iload 4
iconst_1
iadd
istore 4
goto L3
L5:
aload 11
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
aload 3
aload 11
invokevirtual java/lang/reflect/Field/getGenericType()Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 12
aload 0
aload 1
aload 11
aload 0
aload 11
invokespecial com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
aload 12
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
iload 6
iload 7
invokespecial com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
astore 11
aload 8
aload 11
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/name Ljava/lang/String;
aload 11
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
checkcast com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField
astore 11
aload 11
ifnull L6
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " declares multiple JSON fields named "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/name Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
aload 3
aload 3
invokevirtual java/lang/Class/getGenericSuperclass()Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
astore 2
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
astore 3
goto L2
.limit locals 13
.limit stack 7
.end method

.method private getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
aload 1
ldc com/google/gson/annotations/SerializedName
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/google/gson/annotations/SerializedName
astore 2
aload 2
ifnonnull L0
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/fieldNamingPolicy Lcom/google/gson/FieldNamingStrategy;
aload 1
invokeinterface com/google/gson/FieldNamingStrategy/translateName(Ljava/lang/reflect/Field;)Ljava/lang/String; 1
areturn
L0:
aload 2
invokeinterface com/google/gson/annotations/SerializedName/value()Ljava/lang/String; 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
astore 3
ldc java/lang/Object
aload 3
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L0
aconst_null
areturn
L0:
new com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter
dup
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
aload 2
invokevirtual com/google/gson/internal/ConstructorConstructor/get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
aload 0
aload 1
aload 2
aload 3
invokespecial com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
aconst_null
invokespecial com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter/<init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V
areturn
.limit locals 4
.limit stack 7
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/excluder Lcom/google/gson/internal/Excluder;
aload 1
invokevirtual java/lang/reflect/Field/getType()Ljava/lang/Class;
iload 2
invokevirtual com/google/gson/internal/Excluder/excludeClass(Ljava/lang/Class;Z)Z
ifne L0
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/excluder Lcom/google/gson/internal/Excluder;
aload 1
iload 2
invokevirtual com/google/gson/internal/Excluder/excludeField(Ljava/lang/reflect/Field;Z)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method
