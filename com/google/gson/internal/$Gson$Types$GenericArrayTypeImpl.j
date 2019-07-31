.bytecode 50.0
.class final synchronized com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl
.super java/lang/Object
.implements java/lang/reflect/GenericArrayType
.implements java/io/Serializable
.inner class private static final GenericArrayTypeImpl inner com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl outer com/google/gson/internal/$Gson$Types

.field private static final 'serialVersionUID' J = 0L


.field private final 'componentType' Ljava/lang/reflect/Type;

.method public <init>(Ljava/lang/reflect/Type;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokestatic com/google/gson/internal/$Gson$Types/canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
putfield com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl/componentType Ljava/lang/reflect/Type;
return
.limit locals 2
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof java/lang/reflect/GenericArrayType
ifeq L0
aload 0
aload 1
checkcast java/lang/reflect/GenericArrayType
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

.method public getGenericComponentType()Ljava/lang/reflect/Type;
aload 0
getfield com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl/componentType Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
getfield com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl/componentType Ljava/lang/reflect/Type;
invokevirtual java/lang/Object/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl/componentType Ljava/lang/reflect/Type;
invokestatic com/google/gson/internal/$Gson$Types/typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "[]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
