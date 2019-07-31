.bytecode 50.0
.class public final synchronized com/google/gson/internal/$Gson$Types
.super java/lang/Object
.inner class private static final GenericArrayTypeImpl inner com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl outer com/google/gson/internal/$Gson$Types
.inner class private static final ParameterizedTypeImpl inner com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl outer com/google/gson/internal/$Gson$Types
.inner class private static final WildcardTypeImpl inner com/google/gson/internal/$Gson$Types$WildcardTypeImpl outer com/google/gson/internal/$Gson$Types

.field static final 'EMPTY_TYPE_ARRAY' [Ljava/lang/reflect/Type;

.method static <clinit>()V
iconst_0
anewarray java/lang/reflect/Type
putstatic com/google/gson/internal/$Gson$Types/EMPTY_TYPE_ARRAY [Ljava/lang/reflect/Type;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Ljava/lang/reflect/Type;)V
aload 0
invokestatic com/google/gson/internal/$Gson$Types/checkNotPrimitive(Ljava/lang/reflect/Type;)V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Ljava/lang/Object;)I
aload 0
invokestatic com/google/gson/internal/$Gson$Types/hashCodeOrZero(Ljava/lang/Object;)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
new com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl
dup
aload 0
invokespecial com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl/<init>(Ljava/lang/reflect/Type;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
aload 0
instanceof java/lang/Class
ifeq L0
aload 0
checkcast java/lang/Class
astore 0
aload 0
invokevirtual java/lang/Class/isArray()Z
ifeq L1
new com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl
dup
aload 0
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
invokestatic com/google/gson/internal/$Gson$Types/canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
invokespecial com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl/<init>(Ljava/lang/reflect/Type;)V
astore 0
L2:
aload 0
checkcast java/lang/reflect/Type
areturn
L1:
goto L2
L0:
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L3
aload 0
checkcast java/lang/reflect/ParameterizedType
astore 0
new com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl
dup
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getOwnerType()Ljava/lang/reflect/Type; 0
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
invokespecial com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/<init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
areturn
L3:
aload 0
instanceof java/lang/reflect/GenericArrayType
ifeq L4
new com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl
dup
aload 0
checkcast java/lang/reflect/GenericArrayType
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
invokespecial com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl/<init>(Ljava/lang/reflect/Type;)V
areturn
L4:
aload 0
instanceof java/lang/reflect/WildcardType
ifeq L5
aload 0
checkcast java/lang/reflect/WildcardType
astore 0
new com/google/gson/internal/$Gson$Types$WildcardTypeImpl
dup
aload 0
invokeinterface java/lang/reflect/WildcardType/getUpperBounds()[Ljava/lang/reflect/Type; 0
aload 0
invokeinterface java/lang/reflect/WildcardType/getLowerBounds()[Ljava/lang/reflect/Type; 0
invokespecial com/google/gson/internal/$Gson$Types$WildcardTypeImpl/<init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
areturn
L5:
aload 0
areturn
.limit locals 1
.limit stack 5
.end method

.method private static checkNotPrimitive(Ljava/lang/reflect/Type;)V
aload 0
instanceof java/lang/Class
ifeq L0
aload 0
checkcast java/lang/Class
invokevirtual java/lang/Class/isPrimitive()Z
ifne L1
L0:
iconst_1
istore 1
L2:
iload 1
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
return
L1:
iconst_0
istore 1
goto L2
.limit locals 2
.limit stack 1
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
.signature "(Ljava/lang/reflect/TypeVariable<*>;)Ljava/lang/Class<*>;"
aload 0
invokeinterface java/lang/reflect/TypeVariable/getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration; 0
astore 0
aload 0
instanceof java/lang/Class
ifeq L0
aload 0
checkcast java/lang/Class
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 0
aload 1
if_acmpeq L0
aload 0
ifnull L1
aload 0
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
iconst_1
istore 5
iconst_1
istore 6
iconst_1
istore 3
iconst_0
istore 4
aload 0
aload 1
if_acmpne L0
iconst_1
istore 2
L1:
iload 2
ireturn
L0:
aload 0
instanceof java/lang/Class
ifeq L2
aload 0
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ireturn
L2:
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L3
iload 4
istore 2
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 0
checkcast java/lang/reflect/ParameterizedType
astore 0
aload 1
checkcast java/lang/reflect/ParameterizedType
astore 1
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getOwnerType()Ljava/lang/reflect/Type; 0
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getOwnerType()Ljava/lang/reflect/Type; 0
invokestatic com/google/gson/internal/$Gson$Types/equal(Ljava/lang/Object;Ljava/lang/Object;)Z
ifeq L4
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
invokestatic java/util/Arrays/equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
ifeq L4
iload 3
istore 2
L5:
iload 2
ireturn
L4:
iconst_0
istore 2
goto L5
L3:
aload 0
instanceof java/lang/reflect/GenericArrayType
ifeq L6
iload 4
istore 2
aload 1
instanceof java/lang/reflect/GenericArrayType
ifeq L1
aload 0
checkcast java/lang/reflect/GenericArrayType
astore 0
aload 1
checkcast java/lang/reflect/GenericArrayType
astore 1
aload 0
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
aload 1
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
invokestatic com/google/gson/internal/$Gson$Types/equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
ireturn
L6:
aload 0
instanceof java/lang/reflect/WildcardType
ifeq L7
iload 4
istore 2
aload 1
instanceof java/lang/reflect/WildcardType
ifeq L1
aload 0
checkcast java/lang/reflect/WildcardType
astore 0
aload 1
checkcast java/lang/reflect/WildcardType
astore 1
aload 0
invokeinterface java/lang/reflect/WildcardType/getUpperBounds()[Ljava/lang/reflect/Type; 0
aload 1
invokeinterface java/lang/reflect/WildcardType/getUpperBounds()[Ljava/lang/reflect/Type; 0
invokestatic java/util/Arrays/equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
ifeq L8
aload 0
invokeinterface java/lang/reflect/WildcardType/getLowerBounds()[Ljava/lang/reflect/Type; 0
aload 1
invokeinterface java/lang/reflect/WildcardType/getLowerBounds()[Ljava/lang/reflect/Type; 0
invokestatic java/util/Arrays/equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
ifeq L8
iload 5
istore 2
L9:
iload 2
ireturn
L8:
iconst_0
istore 2
goto L9
L7:
iload 4
istore 2
aload 0
instanceof java/lang/reflect/TypeVariable
ifeq L1
iload 4
istore 2
aload 1
instanceof java/lang/reflect/TypeVariable
ifeq L1
aload 0
checkcast java/lang/reflect/TypeVariable
astore 0
aload 1
checkcast java/lang/reflect/TypeVariable
astore 1
aload 0
invokeinterface java/lang/reflect/TypeVariable/getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration; 0
aload 1
invokeinterface java/lang/reflect/TypeVariable/getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration; 0
if_acmpne L10
aload 0
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
aload 1
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
iload 6
istore 2
L11:
iload 2
ireturn
L10:
iconst_0
istore 2
goto L11
.limit locals 7
.limit stack 2
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
aload 0
instanceof java/lang/reflect/GenericArrayType
ifeq L0
aload 0
checkcast java/lang/reflect/GenericArrayType
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
areturn
L0:
aload 0
checkcast java/lang/Class
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/reflect/Type;Ljava/lang/Class<*>;)Ljava/lang/reflect/Type;"
aload 0
aload 1
ldc java/util/Collection
invokestatic com/google/gson/internal/$Gson$Types/getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
astore 1
aload 1
astore 0
aload 1
instanceof java/lang/reflect/WildcardType
ifeq L0
aload 1
checkcast java/lang/reflect/WildcardType
invokeinterface java/lang/reflect/WildcardType/getUpperBounds()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 0
L0:
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 0
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
areturn
L1:
ldc java/lang/Object
areturn
.limit locals 2
.limit stack 3
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/reflect/Type;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Ljava/lang/reflect/Type;"
aload 2
aload 1
if_acmpne L0
aload 0
areturn
L0:
aload 2
invokevirtual java/lang/Class/isInterface()Z
ifeq L1
aload 1
invokevirtual java/lang/Class/getInterfaces()[Ljava/lang/Class;
astore 0
iconst_0
istore 3
aload 0
arraylength
istore 4
L2:
iload 3
iload 4
if_icmpge L1
aload 0
iload 3
aaload
aload 2
if_acmpne L3
aload 1
invokevirtual java/lang/Class/getGenericInterfaces()[Ljava/lang/reflect/Type;
iload 3
aaload
areturn
L3:
aload 2
aload 0
iload 3
aaload
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L4
aload 1
invokevirtual java/lang/Class/getGenericInterfaces()[Ljava/lang/reflect/Type;
iload 3
aaload
aload 0
iload 3
aaload
aload 2
invokestatic com/google/gson/internal/$Gson$Types/getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
areturn
L4:
iload 3
iconst_1
iadd
istore 3
goto L2
L1:
aload 1
invokevirtual java/lang/Class/isInterface()Z
ifne L5
L6:
aload 1
ldc java/lang/Object
if_acmpeq L5
aload 1
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
astore 0
aload 0
aload 2
if_acmpne L7
aload 1
invokevirtual java/lang/Class/getGenericSuperclass()Ljava/lang/reflect/Type;
areturn
L7:
aload 2
aload 0
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L8
aload 1
invokevirtual java/lang/Class/getGenericSuperclass()Ljava/lang/reflect/Type;
aload 0
aload 2
invokestatic com/google/gson/internal/$Gson$Types/getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
areturn
L8:
aload 0
astore 1
goto L6
L5:
aload 2
areturn
.limit locals 5
.limit stack 3
.end method

.method public static getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
.signature "(Ljava/lang/reflect/Type;Ljava/lang/Class<*>;)[Ljava/lang/reflect/Type;"
aload 0
ldc java/util/Properties
if_acmpne L0
iconst_2
anewarray java/lang/reflect/Type
dup
iconst_0
ldc java/lang/String
aastore
dup
iconst_1
ldc java/lang/String
aastore
areturn
L0:
aload 0
aload 1
ldc java/util/Map
invokestatic com/google/gson/internal/$Gson$Types/getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
astore 0
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 0
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
areturn
L1:
iconst_2
anewarray java/lang/reflect/Type
dup
iconst_0
ldc java/lang/Object
aastore
dup
iconst_1
ldc java/lang/Object
aastore
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
.signature "(Ljava/lang/reflect/Type;)Ljava/lang/Class<*>;"
aload 0
instanceof java/lang/Class
ifeq L0
aload 0
checkcast java/lang/Class
areturn
L0:
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 0
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
astore 0
aload 0
instanceof java/lang/Class
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 0
checkcast java/lang/Class
areturn
L1:
aload 0
instanceof java/lang/reflect/GenericArrayType
ifeq L2
aload 0
checkcast java/lang/reflect/GenericArrayType
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
invokestatic com/google/gson/internal/$Gson$Types/getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
iconst_0
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
areturn
L2:
aload 0
instanceof java/lang/reflect/TypeVariable
ifeq L3
ldc java/lang/Object
areturn
L3:
aload 0
instanceof java/lang/reflect/WildcardType
ifeq L4
aload 0
checkcast java/lang/reflect/WildcardType
invokeinterface java/lang/reflect/WildcardType/getUpperBounds()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Types/getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
areturn
L4:
aload 0
ifnonnull L5
ldc "null"
astore 1
L6:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected a Class, ParameterizedType, or GenericArrayType, but <"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "> is of type "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
astore 1
goto L6
.limit locals 2
.limit stack 4
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/reflect/Type;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Ljava/lang/reflect/Type;"
aload 2
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 0
aload 1
aload 0
aload 1
aload 2
invokestatic com/google/gson/internal/$Gson$Types/getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
areturn
.limit locals 3
.limit stack 5
.end method

.method private static hashCodeOrZero(Ljava/lang/Object;)I
aload 0
ifnull L0
aload 0
invokevirtual java/lang/Object/hashCode()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
iconst_0
istore 2
L0:
iload 2
aload 0
arraylength
if_icmpge L1
aload 1
aload 0
iload 2
aaload
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
iload 2
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
new java/util/NoSuchElementException
dup
invokespecial java/util/NoSuchElementException/<init>()V
athrow
.limit locals 3
.limit stack 3
.end method

.method public static transient newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
new com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl
dup
aload 0
aload 1
aload 2
invokespecial com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/<init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
areturn
.limit locals 3
.limit stack 5
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/reflect/Type;Ljava/lang/Class<*>;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;"
L0:
aload 2
instanceof java/lang/reflect/TypeVariable
ifeq L1
aload 2
checkcast java/lang/reflect/TypeVariable
astore 8
aload 0
aload 1
aload 8
invokestatic com/google/gson/internal/$Gson$Types/resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
astore 7
aload 7
astore 2
aload 7
aload 8
if_acmpne L0
aload 7
astore 2
L2:
aload 2
areturn
L1:
aload 2
instanceof java/lang/Class
ifeq L3
aload 2
checkcast java/lang/Class
invokevirtual java/lang/Class/isArray()Z
ifeq L3
aload 2
checkcast java/lang/Class
astore 2
aload 2
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
astore 7
aload 0
aload 1
aload 7
invokestatic com/google/gson/internal/$Gson$Types/resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 0
aload 7
aload 0
if_acmpne L4
aload 2
astore 0
L5:
aload 0
areturn
L4:
aload 0
invokestatic com/google/gson/internal/$Gson$Types/arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
astore 0
goto L5
L3:
aload 2
instanceof java/lang/reflect/GenericArrayType
ifeq L6
aload 2
checkcast java/lang/reflect/GenericArrayType
astore 2
aload 2
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
astore 7
aload 0
aload 1
aload 7
invokestatic com/google/gson/internal/$Gson$Types/resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 0
aload 7
aload 0
if_acmpeq L2
aload 0
invokestatic com/google/gson/internal/$Gson$Types/arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
areturn
L6:
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L7
aload 2
checkcast java/lang/reflect/ParameterizedType
astore 8
aload 8
invokeinterface java/lang/reflect/ParameterizedType/getOwnerType()Ljava/lang/reflect/Type; 0
astore 2
aload 0
aload 1
aload 2
invokestatic com/google/gson/internal/$Gson$Types/resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 9
aload 9
aload 2
if_acmpeq L8
iconst_1
istore 3
L9:
aload 8
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
astore 7
iconst_0
istore 5
aload 7
arraylength
istore 6
L10:
iload 5
iload 6
if_icmpge L11
aload 0
aload 1
aload 7
iload 5
aaload
invokestatic com/google/gson/internal/$Gson$Types/resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 10
aload 7
astore 2
iload 3
istore 4
aload 10
aload 7
iload 5
aaload
if_acmpeq L12
aload 7
astore 2
iload 3
istore 4
iload 3
ifne L13
aload 7
invokevirtual [Ljava/lang/reflect/Type;/clone()Ljava/lang/Object;
checkcast [Ljava/lang/reflect/Type;
astore 2
iconst_1
istore 4
L13:
aload 2
iload 5
aload 10
aastore
L12:
iload 5
iconst_1
iadd
istore 5
aload 2
astore 7
iload 4
istore 3
goto L10
L8:
iconst_0
istore 3
goto L9
L11:
aload 8
astore 2
iload 3
ifeq L2
aload 9
aload 8
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
aload 7
invokestatic com/google/gson/internal/$Gson$Types/newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
areturn
L7:
aload 2
instanceof java/lang/reflect/WildcardType
ifeq L14
aload 2
checkcast java/lang/reflect/WildcardType
astore 7
aload 7
invokeinterface java/lang/reflect/WildcardType/getLowerBounds()[Ljava/lang/reflect/Type; 0
astore 8
aload 7
invokeinterface java/lang/reflect/WildcardType/getUpperBounds()[Ljava/lang/reflect/Type; 0
astore 9
aload 8
arraylength
iconst_1
if_icmpne L15
aload 0
aload 1
aload 8
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Types/resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 0
aload 7
astore 2
aload 0
aload 8
iconst_0
aaload
if_acmpeq L2
aload 0
invokestatic com/google/gson/internal/$Gson$Types/supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
areturn
L15:
aload 7
astore 2
aload 9
arraylength
iconst_1
if_icmpne L2
aload 0
aload 1
aload 9
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Types/resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 0
aload 7
astore 2
aload 0
aload 9
iconst_0
aaload
if_acmpeq L2
aload 0
invokestatic com/google/gson/internal/$Gson$Types/subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
areturn
L14:
aload 2
areturn
.limit locals 11
.limit stack 4
.end method

.method static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/reflect/Type;Ljava/lang/Class<*>;Ljava/lang/reflect/TypeVariable<*>;)Ljava/lang/reflect/Type;"
aload 2
invokestatic com/google/gson/internal/$Gson$Types/declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
astore 4
aload 4
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 0
aload 1
aload 4
invokestatic com/google/gson/internal/$Gson$Types/getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
astore 0
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 4
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
aload 2
invokestatic com/google/gson/internal/$Gson$Types/indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
istore 3
aload 0
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iload 3
aaload
areturn
.limit locals 5
.limit stack 3
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
getstatic com/google/gson/internal/$Gson$Types/EMPTY_TYPE_ARRAY [Ljava/lang/reflect/Type;
astore 1
new com/google/gson/internal/$Gson$Types$WildcardTypeImpl
dup
iconst_1
anewarray java/lang/reflect/Type
dup
iconst_0
aload 0
aastore
aload 1
invokespecial com/google/gson/internal/$Gson$Types$WildcardTypeImpl/<init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
areturn
.limit locals 2
.limit stack 6
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
new com/google/gson/internal/$Gson$Types$WildcardTypeImpl
dup
iconst_1
anewarray java/lang/reflect/Type
dup
iconst_0
ldc java/lang/Object
aastore
iconst_1
anewarray java/lang/reflect/Type
dup
iconst_0
aload 0
aastore
invokespecial com/google/gson/internal/$Gson$Types$WildcardTypeImpl/<init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
areturn
.limit locals 1
.limit stack 7
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
aload 0
instanceof java/lang/Class
ifeq L0
aload 0
checkcast java/lang/Class
invokevirtual java/lang/Class/getName()Ljava/lang/String;
areturn
L0:
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
