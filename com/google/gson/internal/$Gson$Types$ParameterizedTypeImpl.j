.bytecode 50.0
.class final synchronized com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl
.super java/lang/Object
.implements java/lang/reflect/ParameterizedType
.implements java/io/Serializable
.inner class private static final ParameterizedTypeImpl inner com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl outer com/google/gson/internal/$Gson$Types

.field private static final 'serialVersionUID' J = 0L


.field private final 'ownerType' Ljava/lang/reflect/Type;

.field private final 'rawType' Ljava/lang/reflect/Type;

.field private final 'typeArguments' [Ljava/lang/reflect/Type;

.method public transient <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
iconst_0
istore 6
aload 0
invokespecial java/lang/Object/<init>()V
aload 2
instanceof java/lang/Class
ifeq L0
aload 2
checkcast java/lang/Class
astore 7
aload 1
ifnonnull L1
aload 7
invokevirtual java/lang/Class/getEnclosingClass()Ljava/lang/Class;
ifnonnull L2
L1:
iconst_1
istore 5
L3:
iload 5
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 1
ifnull L4
iload 6
istore 5
aload 7
invokevirtual java/lang/Class/getEnclosingClass()Ljava/lang/Class;
ifnull L5
L4:
iconst_1
istore 5
L5:
iload 5
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
L0:
aload 1
ifnonnull L6
aconst_null
astore 1
L7:
aload 0
aload 1
putfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/ownerType Ljava/lang/reflect/Type;
aload 0
aload 2
invokestatic com/google/gson/internal/$Gson$Types/canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
putfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/rawType Ljava/lang/reflect/Type;
aload 0
aload 3
invokevirtual [Ljava/lang/reflect/Type;/clone()Ljava/lang/Object;
checkcast [Ljava/lang/reflect/Type;
putfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
iconst_0
istore 4
L8:
iload 4
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
arraylength
if_icmpge L9
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
iload 4
aaload
invokestatic com/google/gson/internal/$Gson$Preconditions/checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
iload 4
aaload
invokestatic com/google/gson/internal/$Gson$Types/access$000(Ljava/lang/reflect/Type;)V
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
iload 4
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
iload 4
aaload
invokestatic com/google/gson/internal/$Gson$Types/canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
aastore
iload 4
iconst_1
iadd
istore 4
goto L8
L2:
iconst_0
istore 5
goto L3
L6:
aload 1
invokestatic com/google/gson/internal/$Gson$Types/canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 1
goto L7
L9:
return
.limit locals 8
.limit stack 4
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L0
aload 0
aload 1
checkcast java/lang/reflect/ParameterizedType
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

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
invokevirtual [Ljava/lang/reflect/Type;/clone()Ljava/lang/Object;
checkcast [Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/ownerType Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRawType()Ljava/lang/reflect/Type;
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/rawType Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
invokestatic java/util/Arrays/hashCode([Ljava/lang/Object;)I
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/rawType Ljava/lang/reflect/Type;
invokevirtual java/lang/Object/hashCode()I
ixor
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/ownerType Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/access$100(Ljava/lang/Object;)I
ixor
ireturn
.limit locals 1
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
arraylength
iconst_1
iadd
bipush 30
imul
invokespecial java/lang/StringBuilder/<init>(I)V
astore 2
aload 2
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/rawType Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
arraylength
ifne L0
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 2
ldc "<"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Types/typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iconst_1
istore 1
L1:
iload 1
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
arraylength
if_icmpge L2
aload 2
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl/typeArguments [Ljava/lang/reflect/Type;
iload 1
aaload
invokestatic com/google/gson/internal/$Gson$Types/typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 2
ldc ">"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method
