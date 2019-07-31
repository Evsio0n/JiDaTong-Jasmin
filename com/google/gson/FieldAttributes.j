.bytecode 50.0
.class public final synchronized com/google/gson/FieldAttributes
.super java/lang/Object

.field private final 'field' Ljava/lang/reflect/Field;

.method public <init>(Ljava/lang/reflect/Field;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
invokestatic com/google/gson/internal/$Gson$Preconditions/checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
aload 1
putfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
return
.limit locals 2
.limit stack 2
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
.throws java/lang/IllegalAccessException
aload 0
getfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
aload 1
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.signature "<T::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<TT;>;)TT;"
aload 0
getfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
aload 1
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getAnnotations()Ljava/util/Collection;
.signature "()Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
aload 0
getfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getAnnotations()[Ljava/lang/annotation/Annotation;
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDeclaredClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
aload 0
getfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getType()Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDeclaredType()Ljava/lang/reflect/Type;
aload 0
getfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getGenericType()Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDeclaringClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
aload 0
getfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getDeclaringClass()Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hasModifier(I)Z
aload 0
getfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getModifiers()I
iload 1
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

.method isSynthetic()Z
aload 0
getfield com/google/gson/FieldAttributes/field Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/isSynthetic()Z
ireturn
.limit locals 1
.limit stack 1
.end method
