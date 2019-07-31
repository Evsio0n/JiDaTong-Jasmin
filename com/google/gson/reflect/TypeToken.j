.bytecode 50.0
.class public synchronized com/google/gson/reflect/TypeToken
.super java/lang/Object
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;"

.field final 'hashCode' I

.field final 'rawType' Ljava/lang/Class; signature "Ljava/lang/Class<-TT;>;"

.field final 'type' Ljava/lang/reflect/Type;

.method protected <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokestatic com/google/gson/reflect/TypeToken/getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
putfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
aload 0
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
putfield com/google/gson/reflect/TypeToken/rawType Ljava/lang/Class;
aload 0
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
invokevirtual java/lang/Object/hashCode()I
putfield com/google/gson/reflect/TypeToken/hashCode I
return
.limit locals 1
.limit stack 2
.end method

.method <init>(Ljava/lang/reflect/Type;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokestatic com/google/gson/internal/$Gson$Preconditions/checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/reflect/Type
invokestatic com/google/gson/internal/$Gson$Types/canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
putfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
aload 0
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
putfield com/google/gson/reflect/TypeToken/rawType Ljava/lang/Class;
aload 0
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
invokevirtual java/lang/Object/hashCode()I
putfield com/google/gson/reflect/TypeToken/hashCode I
return
.limit locals 2
.limit stack 2
.end method

.method private static transient buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;
.signature "(Ljava/lang/reflect/Type;[Ljava/lang/Class<*>;)Ljava/lang/AssertionError;"
new java/lang/StringBuilder
dup
ldc "Unexpected type. Expected one of: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 4
aload 1
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 4
aload 1
iload 2
aaload
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
ldc "but got: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", for type token: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 46
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
new java/lang/AssertionError
dup
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/AssertionError/<init>(Ljava/lang/Object;)V
areturn
.limit locals 5
.limit stack 3
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/google/gson/reflect/TypeToken<TT;>;"
new com/google/gson/reflect/TypeToken
dup
aload 0
invokespecial com/google/gson/reflect/TypeToken/<init>(Ljava/lang/reflect/Type;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
.signature "(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken<*>;"
new com/google/gson/reflect/TypeToken
dup
aload 0
invokespecial com/google/gson/reflect/TypeToken/<init>(Ljava/lang/reflect/Type;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/Class<*>;)Ljava/lang/reflect/Type;"
aload 0
invokevirtual java/lang/Class/getGenericSuperclass()Ljava/lang/reflect/Type;
astore 0
aload 0
instanceof java/lang/Class
ifeq L0
new java/lang/RuntimeException
dup
ldc "Missing type parameter."
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Types/canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 3
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
aload 1
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
astore 2
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L0
aload 0
astore 1
aload 0
instanceof java/lang/reflect/GenericArrayType
ifeq L1
aload 0
checkcast java/lang/reflect/GenericArrayType
invokeinterface java/lang/reflect/GenericArrayType/getGenericComponentType()Ljava/lang/reflect/Type; 0
astore 1
L2:
aload 1
aload 2
checkcast java/lang/reflect/ParameterizedType
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic com/google/gson/reflect/TypeToken/isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
ireturn
L1:
aload 0
instanceof java/lang/Class
ifeq L2
aload 0
checkcast java/lang/Class
astore 0
L3:
aload 0
invokevirtual java/lang/Class/isArray()Z
ifeq L4
aload 0
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
astore 0
goto L3
L4:
aload 0
astore 1
goto L2
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
.signature "(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z"
aload 0
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
iconst_1
ireturn
L1:
aload 0
invokestatic com/google/gson/internal/$Gson$Types/getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
astore 6
aconst_null
astore 5
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L2
aload 0
checkcast java/lang/reflect/ParameterizedType
astore 5
L2:
aload 5
ifnull L3
aload 5
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
astore 7
aload 6
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
astore 8
iconst_0
istore 3
L4:
iload 3
aload 7
arraylength
if_icmpge L5
aload 7
iload 3
aaload
astore 0
aload 8
iload 3
aaload
astore 9
L6:
aload 0
instanceof java/lang/reflect/TypeVariable
ifeq L7
aload 2
aload 0
checkcast java/lang/reflect/TypeVariable
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/reflect/Type
astore 0
goto L6
L7:
aload 2
aload 9
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
aload 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
aload 5
aload 1
aload 2
invokestatic com/google/gson/reflect/TypeToken/typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
ifeq L3
iconst_1
ireturn
L3:
aload 6
invokevirtual java/lang/Class/getGenericInterfaces()[Ljava/lang/reflect/Type;
astore 0
aload 0
arraylength
istore 4
iconst_0
istore 3
L8:
iload 3
iload 4
if_icmpge L9
aload 0
iload 3
aaload
aload 1
new java/util/HashMap
dup
aload 2
invokespecial java/util/HashMap/<init>(Ljava/util/Map;)V
invokestatic com/google/gson/reflect/TypeToken/isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
ifeq L10
iconst_1
ireturn
L10:
iload 3
iconst_1
iadd
istore 3
goto L8
L9:
aload 6
invokevirtual java/lang/Class/getGenericSuperclass()Ljava/lang/reflect/Type;
aload 1
new java/util/HashMap
dup
aload 2
invokespecial java/util/HashMap/<init>(Ljava/util/Map;)V
invokestatic com/google/gson/reflect/TypeToken/isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
ireturn
.limit locals 10
.limit stack 5
.end method

.method private static matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
.signature "(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z"
aload 1
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
instanceof java/lang/reflect/TypeVariable
ifeq L1
aload 1
aload 2
aload 0
checkcast java/lang/reflect/TypeVariable
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method private static typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
.signature "(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;)Z"
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
astore 0
aload 1
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
astore 1
iconst_0
istore 3
L1:
iload 3
aload 0
arraylength
if_icmpge L2
aload 0
iload 3
aaload
aload 1
iload 3
aaload
aload 2
invokestatic com/google/gson/reflect/TypeToken/matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
ifne L3
L0:
iconst_0
ireturn
L3:
iload 3
iconst_1
iadd
istore 3
goto L1
L2:
iconst_1
ireturn
.limit locals 4
.limit stack 3
.end method

.method public final equals(Ljava/lang/Object;)Z
aload 1
instanceof com/google/gson/reflect/TypeToken
ifeq L0
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
aload 1
checkcast com/google/gson/reflect/TypeToken
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final getRawType()Ljava/lang/Class;
.signature "()Ljava/lang/Class<-TT;>;"
aload 0
getfield com/google/gson/reflect/TypeToken/rawType Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getType()Ljava/lang/reflect/Type;
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final hashCode()I
aload 0
getfield com/google/gson/reflect/TypeToken/hashCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isAssignableFrom(Lcom/google/gson/reflect/TypeToken;)Z
.signature "(Lcom/google/gson/reflect/TypeToken<*>;)Z"
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
aload 1
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
invokevirtual com/google/gson/reflect/TypeToken/isAssignableFrom(Ljava/lang/reflect/Type;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
aload 1
invokevirtual com/google/gson/reflect/TypeToken/isAssignableFrom(Ljava/lang/reflect/Type;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isAssignableFrom(Ljava/lang/reflect/Type;)Z
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
iconst_1
ireturn
L1:
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
instanceof java/lang/Class
ifeq L2
aload 0
getfield com/google/gson/reflect/TypeToken/rawType Ljava/lang/Class;
aload 1
invokestatic com/google/gson/internal/$Gson$Types/getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ireturn
L2:
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
instanceof java/lang/reflect/ParameterizedType
ifeq L3
aload 1
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
checkcast java/lang/reflect/ParameterizedType
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic com/google/gson/reflect/TypeToken/isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
ireturn
L3:
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
instanceof java/lang/reflect/GenericArrayType
ifeq L4
aload 0
getfield com/google/gson/reflect/TypeToken/rawType Ljava/lang/Class;
aload 1
invokestatic com/google/gson/internal/$Gson$Types/getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L5
aload 1
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
checkcast java/lang/reflect/GenericArrayType
invokestatic com/google/gson/reflect/TypeToken/isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
ifeq L5
iconst_1
istore 2
L6:
iload 2
ireturn
L5:
iconst_0
istore 2
goto L6
L4:
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
iconst_3
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/Class
aastore
dup
iconst_1
ldc java/lang/reflect/ParameterizedType
aastore
dup
iconst_2
ldc java/lang/reflect/GenericArrayType
aastore
invokestatic com/google/gson/reflect/TypeToken/buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;
athrow
.limit locals 3
.limit stack 5
.end method

.method public final toString()Ljava/lang/String;
aload 0
getfield com/google/gson/reflect/TypeToken/type Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
