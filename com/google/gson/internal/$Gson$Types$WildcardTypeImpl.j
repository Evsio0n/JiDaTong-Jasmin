.bytecode 50.0
.class final synchronized com/google/gson/internal/$Gson$Types$WildcardTypeImpl
.super java/lang/Object
.implements java/lang/reflect/WildcardType
.implements java/io/Serializable
.inner class private static final WildcardTypeImpl inner com/google/gson/internal/$Gson$Types$WildcardTypeImpl outer com/google/gson/internal/$Gson$Types

.field private static final 'serialVersionUID' J = 0L


.field private final 'lowerBound' Ljava/lang/reflect/Type;

.field private final 'upperBound' Ljava/lang/reflect/Type;

.method public <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
iconst_1
istore 4
aload 0
invokespecial java/lang/Object/<init>()V
aload 2
arraylength
iconst_1
if_icmpgt L0
iconst_1
istore 3
L1:
iload 3
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 1
arraylength
iconst_1
if_icmpne L2
iconst_1
istore 3
L3:
iload 3
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 2
arraylength
iconst_1
if_icmpne L4
aload 2
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Preconditions/checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 2
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Types/access$000(Ljava/lang/reflect/Type;)V
aload 1
iconst_0
aaload
ldc java/lang/Object
if_acmpne L5
iload 4
istore 3
L6:
iload 3
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 0
aload 2
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Types/canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
putfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/lowerBound Ljava/lang/reflect/Type;
aload 0
ldc java/lang/Object
putfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/upperBound Ljava/lang/reflect/Type;
return
L0:
iconst_0
istore 3
goto L1
L2:
iconst_0
istore 3
goto L3
L5:
iconst_0
istore 3
goto L6
L4:
aload 1
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Preconditions/checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Types/access$000(Ljava/lang/reflect/Type;)V
aload 0
aconst_null
putfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/lowerBound Ljava/lang/reflect/Type;
aload 0
aload 1
iconst_0
aaload
invokestatic com/google/gson/internal/$Gson$Types/canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
putfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/upperBound Ljava/lang/reflect/Type;
return
.limit locals 5
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof java/lang/reflect/WildcardType
ifeq L0
aload 0
aload 1
checkcast java/lang/reflect/WildcardType
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

.method public getLowerBounds()[Ljava/lang/reflect/Type;
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/lowerBound Ljava/lang/reflect/Type;
ifnull L0
iconst_1
anewarray java/lang/reflect/Type
dup
iconst_0
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/lowerBound Ljava/lang/reflect/Type;
aastore
areturn
L0:
getstatic com/google/gson/internal/$Gson$Types/EMPTY_TYPE_ARRAY [Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
iconst_1
anewarray java/lang/reflect/Type
dup
iconst_0
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/upperBound Ljava/lang/reflect/Type;
aastore
areturn
.limit locals 1
.limit stack 4
.end method

.method public hashCode()I
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/lowerBound Ljava/lang/reflect/Type;
ifnull L0
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/lowerBound Ljava/lang/reflect/Type;
invokevirtual java/lang/Object/hashCode()I
bipush 31
iadd
istore 1
L1:
iload 1
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/upperBound Ljava/lang/reflect/Type;
invokevirtual java/lang/Object/hashCode()I
bipush 31
iadd
ixor
ireturn
L0:
iconst_1
istore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/lowerBound Ljava/lang/reflect/Type;
ifnull L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "? super "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/lowerBound Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/upperBound Ljava/lang/reflect/Type;
ldc java/lang/Object
if_acmpne L1
ldc "?"
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "? extends "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/$Gson$Types$WildcardTypeImpl/upperBound Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
