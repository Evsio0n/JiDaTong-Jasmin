.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/FieldInfo
.super java/lang/Object
.implements java/lang/Comparable
.signature "Ljava/lang/Object;Ljava/lang/Comparable<Lcom/alibaba/fastjson/util/FieldInfo;>;"

.field private final 'declaringClass' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private final 'field' Ljava/lang/reflect/Field;

.field private final 'fieldClass' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private final 'fieldType' Ljava/lang/reflect/Type;

.field private 'getOnly' Z

.field private final 'method' Ljava/lang/reflect/Method;

.field private final 'name' Ljava/lang/String;

.method public <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)V
.signature "(Ljava/lang/String;Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/alibaba/fastjson/util/FieldInfo/getOnly Z
aload 0
aload 1
putfield com/alibaba/fastjson/util/FieldInfo/name Ljava/lang/String;
aload 0
aload 2
putfield com/alibaba/fastjson/util/FieldInfo/declaringClass Ljava/lang/Class;
aload 0
aload 3
putfield com/alibaba/fastjson/util/FieldInfo/fieldClass Ljava/lang/Class;
aload 0
aload 4
putfield com/alibaba/fastjson/util/FieldInfo/fieldType Ljava/lang/reflect/Type;
aload 0
aconst_null
putfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
aload 0
aload 5
putfield com/alibaba/fastjson/util/FieldInfo/field Ljava/lang/reflect/Field;
aload 5
ifnull L0
aload 5
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
L0:
return
.limit locals 6
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
aload 0
aload 1
aload 2
aload 3
aconst_null
aconst_null
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
return
.limit locals 4
.limit stack 6
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
.signature "(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class<*>;Ljava/lang/reflect/Type;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/alibaba/fastjson/util/FieldInfo/getOnly Z
aload 0
aload 1
putfield com/alibaba/fastjson/util/FieldInfo/name Ljava/lang/String;
aload 0
aload 2
putfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
aload 0
aload 3
putfield com/alibaba/fastjson/util/FieldInfo/field Ljava/lang/reflect/Field;
aload 2
ifnull L0
aload 2
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
L0:
aload 3
ifnull L1
aload 3
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
L1:
aload 2
ifnull L2
aload 2
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
arraylength
iconst_1
if_icmpne L3
aload 2
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
iconst_0
aaload
astore 1
aload 2
invokevirtual java/lang/reflect/Method/getGenericParameterTypes()[Ljava/lang/reflect/Type;
iconst_0
aaload
astore 3
L4:
aload 0
aload 2
invokevirtual java/lang/reflect/Method/getDeclaringClass()Ljava/lang/Class;
putfield com/alibaba/fastjson/util/FieldInfo/declaringClass Ljava/lang/Class;
L5:
aload 4
ifnull L6
aload 1
ldc java/lang/Object
if_acmpne L6
aload 3
instanceof java/lang/reflect/TypeVariable
ifeq L6
aload 4
aload 3
checkcast java/lang/reflect/TypeVariable
invokestatic com/alibaba/fastjson/util/FieldInfo/getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
astore 2
aload 2
ifnull L6
aload 0
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
putfield com/alibaba/fastjson/util/FieldInfo/fieldClass Ljava/lang/Class;
aload 0
aload 2
putfield com/alibaba/fastjson/util/FieldInfo/fieldType Ljava/lang/reflect/Type;
return
L3:
aload 2
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
astore 1
aload 2
invokevirtual java/lang/reflect/Method/getGenericReturnType()Ljava/lang/reflect/Type;
astore 3
aload 0
iconst_1
putfield com/alibaba/fastjson/util/FieldInfo/getOnly Z
goto L4
L2:
aload 3
invokevirtual java/lang/reflect/Field/getType()Ljava/lang/Class;
astore 1
aload 3
invokevirtual java/lang/reflect/Field/getGenericType()Ljava/lang/reflect/Type;
astore 2
aload 0
aload 3
invokevirtual java/lang/reflect/Field/getDeclaringClass()Ljava/lang/Class;
putfield com/alibaba/fastjson/util/FieldInfo/declaringClass Ljava/lang/Class;
aload 2
astore 3
goto L5
L6:
aload 4
aload 5
aload 3
invokestatic com/alibaba/fastjson/util/FieldInfo/getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 4
aload 1
astore 2
aload 4
aload 3
if_acmpeq L7
aload 4
instanceof java/lang/reflect/ParameterizedType
ifeq L8
aload 4
invokestatic com/alibaba/fastjson/util/TypeUtils/getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
astore 2
L7:
aload 0
aload 4
putfield com/alibaba/fastjson/util/FieldInfo/fieldType Ljava/lang/reflect/Type;
aload 0
aload 2
putfield com/alibaba/fastjson/util/FieldInfo/fieldClass Ljava/lang/Class;
return
L8:
aload 1
astore 2
aload 4
instanceof java/lang/Class
ifeq L7
aload 4
invokestatic com/alibaba/fastjson/util/TypeUtils/getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
astore 2
goto L7
.limit locals 6
.limit stack 3
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/Class<*>;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;"
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
aload 2
areturn
L1:
aload 1
instanceof java/lang/reflect/ParameterizedType
ifne L2
aload 2
areturn
L2:
aload 2
instanceof java/lang/reflect/TypeVariable
ifeq L3
aload 1
checkcast java/lang/reflect/ParameterizedType
astore 7
aload 2
checkcast java/lang/reflect/TypeVariable
astore 8
iconst_0
istore 3
L4:
iload 3
aload 0
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
arraylength
if_icmpge L3
aload 0
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
iload 3
aaload
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
aload 8
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 7
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iload 3
aaload
areturn
L5:
iload 3
iconst_1
iadd
istore 3
goto L4
L3:
aload 2
instanceof java/lang/reflect/ParameterizedType
ifeq L6
aload 2
checkcast java/lang/reflect/ParameterizedType
astore 7
aload 7
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
astore 8
iconst_0
istore 3
iconst_0
istore 4
L7:
iload 4
aload 8
arraylength
if_icmpge L8
aload 8
iload 4
aaload
astore 9
iload 3
istore 6
aload 9
instanceof java/lang/reflect/TypeVariable
ifeq L9
aload 9
checkcast java/lang/reflect/TypeVariable
astore 9
iload 3
istore 6
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L9
aload 1
checkcast java/lang/reflect/ParameterizedType
astore 10
iconst_0
istore 5
L10:
iload 3
istore 6
iload 5
aload 0
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
arraylength
if_icmpge L9
aload 0
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
iload 5
aaload
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
aload 9
invokeinterface java/lang/reflect/TypeVariable/getName()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L11
aload 8
iload 4
aload 10
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iload 5
aaload
aastore
iconst_1
istore 3
L11:
iload 5
iconst_1
iadd
istore 5
goto L10
L9:
iload 4
iconst_1
iadd
istore 4
iload 6
istore 3
goto L7
L8:
iload 3
ifeq L6
new com/alibaba/fastjson/util/ParameterizedTypeImpl
dup
aload 8
aload 7
invokeinterface java/lang/reflect/ParameterizedType/getOwnerType()Ljava/lang/reflect/Type; 0
aload 7
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
invokespecial com/alibaba/fastjson/util/ParameterizedTypeImpl/<init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
areturn
L6:
aload 2
areturn
.limit locals 11
.limit stack 5
.end method

.method public static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/Class<*>;Ljava/lang/reflect/TypeVariable<*>;)Ljava/lang/reflect/Type;"
aload 1
invokeinterface java/lang/reflect/TypeVariable/getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration; 0
astore 3
L0:
aload 0
invokevirtual java/lang/Class/getGenericSuperclass()Ljava/lang/reflect/Type;
astore 4
aload 4
ifnonnull L1
L2:
aconst_null
areturn
L1:
aload 4
instanceof java/lang/reflect/ParameterizedType
ifeq L3
aload 4
checkcast java/lang/reflect/ParameterizedType
astore 0
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
aload 3
if_acmpne L3
aload 3
invokeinterface java/lang/reflect/GenericDeclaration/getTypeParameters()[Ljava/lang/reflect/TypeVariable; 0
astore 3
aload 0
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
astore 0
iconst_0
istore 2
L4:
iload 2
aload 3
arraylength
if_icmpge L2
aload 3
iload 2
aaload
aload 1
if_acmpne L5
aload 0
iload 2
aaload
areturn
L5:
iload 2
iconst_1
iadd
istore 2
goto L4
L3:
aload 4
invokestatic com/alibaba/fastjson/util/TypeUtils/getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
astore 0
aload 4
ifnonnull L0
aconst_null
areturn
.limit locals 5
.limit stack 2
.end method

.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/name Ljava/lang/String;
aload 1
getfield com/alibaba/fastjson/util/FieldInfo/name Ljava/lang/String;
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic compareTo(Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/alibaba/fastjson/util/FieldInfo
invokevirtual com/alibaba/fastjson/util/FieldInfo/compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.throws java/lang/IllegalAccessException
.throws java/lang/reflect/InvocationTargetException
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
ifnull L0
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
aload 1
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
areturn
L0:
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/field Ljava/lang/reflect/Field;
aload 1
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.signature "<T::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<TT;>;)TT;"
aconst_null
astore 2
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
ifnull L0
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
aload 1
invokevirtual java/lang/reflect/Method/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
astore 2
L0:
aload 2
astore 3
aload 2
ifnonnull L1
aload 2
astore 3
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/field Ljava/lang/reflect/Field;
ifnull L1
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/field Ljava/lang/reflect/Field;
aload 1
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
astore 3
L1:
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method public getDeclaringClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/declaringClass Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getField()Ljava/lang/reflect/Field;
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/field Ljava/lang/reflect/Field;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFieldClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/fieldClass Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFieldType()Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/fieldType Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFormat()Ljava/lang/String;
aconst_null
astore 1
aload 0
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual com/alibaba/fastjson/util/FieldInfo/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 2
aload 2
ifnull L0
aload 2
invokeinterface com/alibaba/fastjson/annotation/JSONField/format()Ljava/lang/String; 0
astore 2
aload 2
astore 1
aload 2
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L0
aconst_null
astore 1
L0:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public getMethod()Ljava/lang/reflect/Method;
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isGetOnly()Z
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/getOnly Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
.throws java/lang/IllegalAccessException
.throws java/lang/reflect/InvocationTargetException
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
ifnull L0
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
aload 1
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
return
L0:
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/field Ljava/lang/reflect/Field;
aload 1
aload 2
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 6
.end method

.method public setAccessible(Z)V
.throws java/lang/SecurityException
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
ifnull L0
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/method Ljava/lang/reflect/Method;
iload 1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
return
L0:
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/field Ljava/lang/reflect/Field;
iload 1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/util/FieldInfo/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
