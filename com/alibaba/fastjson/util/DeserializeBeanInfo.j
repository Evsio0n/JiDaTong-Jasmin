.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/DeserializeBeanInfo
.super java/lang/Object

.field private final 'clazz' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private 'creatorConstructor' Ljava/lang/reflect/Constructor; signature "Ljava/lang/reflect/Constructor<*>;"

.field private 'defaultConstructor' Ljava/lang/reflect/Constructor; signature "Ljava/lang/reflect/Constructor<*>;"

.field private 'factoryMethod' Ljava/lang/reflect/Method;

.field private final 'fieldList' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"

.field private final 'sortedFieldList' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"

.method public <init>(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/util/DeserializeBeanInfo/fieldList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/util/DeserializeBeanInfo/sortedFieldList Ljava/util/List;
aload 0
aload 1
putfield com/alibaba/fastjson/util/DeserializeBeanInfo/clazz Ljava/lang/Class;
return
.limit locals 2
.limit stack 3
.end method

.method public static computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
.signature "(Ljava/lang/Class<*>;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;"
new com/alibaba/fastjson/util/DeserializeBeanInfo
dup
aload 0
invokespecial com/alibaba/fastjson/util/DeserializeBeanInfo/<init>(Ljava/lang/Class;)V
astore 9
aload 0
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
astore 6
aload 6
ifnull L0
aload 6
iconst_1
invokevirtual java/lang/reflect/Constructor/setAccessible(Z)V
aload 9
aload 6
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/setDefaultConstructor(Ljava/lang/reflect/Constructor;)V
L1:
aload 0
invokevirtual java/lang/Class/getMethods()[Ljava/lang/reflect/Method;
astore 10
aload 10
arraylength
istore 4
iconst_0
istore 3
L2:
iload 3
iload 4
if_icmpge L3
aload 10
iload 3
aaload
astore 11
aload 11
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
astore 8
aload 8
invokevirtual java/lang/String/length()I
iconst_4
if_icmpge L4
L5:
iload 3
iconst_1
iadd
istore 3
goto L2
L0:
aload 6
ifnonnull L1
aload 0
invokevirtual java/lang/Class/isInterface()Z
ifne L1
aload 0
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isAbstract(I)Z
ifne L1
aload 0
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
astore 7
aload 7
ifnull L6
aload 7
iconst_1
invokevirtual java/lang/reflect/Constructor/setAccessible(Z)V
aload 9
aload 7
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/setCreatorConstructor(Ljava/lang/reflect/Constructor;)V
iconst_0
istore 3
L7:
iload 3
aload 7
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
arraylength
if_icmpge L8
aload 7
invokevirtual java/lang/reflect/Constructor/getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
iload 3
aaload
astore 8
aconst_null
astore 6
aload 8
arraylength
istore 5
iconst_0
istore 4
L9:
aload 6
astore 1
iload 4
iload 5
if_icmpge L10
aload 8
iload 4
aaload
astore 1
aload 1
instanceof com/alibaba/fastjson/annotation/JSONField
ifeq L11
aload 1
checkcast com/alibaba/fastjson/annotation/JSONField
astore 1
L10:
aload 1
ifnonnull L12
new com/alibaba/fastjson/JSONException
dup
ldc "illegal json creator"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L11:
iload 4
iconst_1
iadd
istore 4
goto L9
L12:
aload 7
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
iload 3
aaload
astore 6
aload 7
invokevirtual java/lang/reflect/Constructor/getGenericParameterTypes()[Ljava/lang/reflect/Type;
iload 3
aaload
astore 8
aload 0
aload 1
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 10
aload 9
new com/alibaba/fastjson/util/FieldInfo
dup
aload 1
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
aload 0
aload 6
aload 8
aload 10
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)V
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L7
L6:
aload 0
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/getFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 7
aload 7
ifnull L13
aload 7
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
aload 9
aload 7
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/setFactoryMethod(Ljava/lang/reflect/Method;)V
iconst_0
istore 3
L14:
iload 3
aload 7
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
arraylength
if_icmpge L8
aload 7
invokevirtual java/lang/reflect/Method/getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
iload 3
aaload
astore 8
aconst_null
astore 6
aload 8
arraylength
istore 5
iconst_0
istore 4
L15:
aload 6
astore 1
iload 4
iload 5
if_icmpge L16
aload 8
iload 4
aaload
astore 1
aload 1
instanceof com/alibaba/fastjson/annotation/JSONField
ifeq L17
aload 1
checkcast com/alibaba/fastjson/annotation/JSONField
astore 1
L16:
aload 1
ifnonnull L18
new com/alibaba/fastjson/JSONException
dup
ldc "illegal json creator"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L17:
iload 4
iconst_1
iadd
istore 4
goto L15
L18:
aload 7
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
iload 3
aaload
astore 6
aload 7
invokevirtual java/lang/reflect/Method/getGenericParameterTypes()[Ljava/lang/reflect/Type;
iload 3
aaload
astore 8
aload 0
aload 1
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 10
aload 9
new com/alibaba/fastjson/util/FieldInfo
dup
aload 1
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
aload 0
aload 6
aload 8
aload 10
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)V
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L14
L13:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "default constructor not found. "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 11
invokevirtual java/lang/reflect/Method/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifne L5
aload 11
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
getstatic java/lang/Void/TYPE Ljava/lang/Class;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L19
aload 11
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L5
L19:
aload 11
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
arraylength
iconst_1
if_icmpne L5
aload 11
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Method/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 7
aload 7
astore 6
aload 7
ifnonnull L20
aload 0
aload 11
invokestatic com/alibaba/fastjson/util/TypeUtils/getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
astore 6
L20:
aload 6
ifnull L21
aload 6
invokeinterface com/alibaba/fastjson/annotation/JSONField/deserialize()Z 0
ifeq L5
aload 6
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifeq L21
aload 9
new com/alibaba/fastjson/util/FieldInfo
dup
aload 6
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
aload 11
aconst_null
aload 0
aload 1
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
pop
aload 11
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
goto L5
L21:
aload 8
ldc "set"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L5
aload 8
iconst_3
invokevirtual java/lang/String/charAt(I)C
istore 2
iload 2
invokestatic java/lang/Character/isUpperCase(C)Z
ifeq L22
getstatic com/alibaba/fastjson/util/TypeUtils/compatibleWithJavaBean Z
ifeq L23
aload 8
iconst_3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokestatic java/beans/Introspector/decapitalize(Ljava/lang/String;)Ljava/lang/String;
astore 6
L24:
aload 0
aload 6
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 8
aload 8
astore 7
aload 8
ifnonnull L25
aload 8
astore 7
aload 11
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
iconst_0
aaload
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpne L25
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "is"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
iconst_0
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/toUpperCase(C)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 6
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 7
L25:
aload 7
ifnull L26
aload 7
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 8
aload 8
ifnull L26
aload 8
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifeq L26
aload 9
new com/alibaba/fastjson/util/FieldInfo
dup
aload 8
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
aload 11
aload 7
aload 0
aload 1
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
pop
goto L5
L23:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
iconst_3
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/toLowerCase(C)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 8
iconst_4
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
goto L24
L22:
iload 2
bipush 95
if_icmpne L27
aload 8
iconst_4
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 6
goto L24
L27:
iload 2
bipush 102
if_icmpne L5
aload 8
iconst_3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 6
goto L24
L26:
aload 9
new com/alibaba/fastjson/util/FieldInfo
dup
aload 6
aload 11
aconst_null
aload 0
aload 1
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
pop
aload 11
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
goto L5
L3:
aload 0
invokevirtual java/lang/Class/getFields()[Ljava/lang/reflect/Field;
astore 8
aload 8
arraylength
istore 5
iconst_0
istore 3
L28:
iload 3
iload 5
if_icmpge L29
aload 8
iload 3
aaload
astore 10
aload 10
invokevirtual java/lang/reflect/Field/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifeq L30
L31:
iload 3
iconst_1
iadd
istore 3
goto L28
L30:
iconst_0
istore 4
aload 9
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFieldList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L32:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L33
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 10
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L32
iconst_1
istore 4
goto L32
L33:
iload 4
ifne L31
aload 10
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
astore 7
aload 10
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 11
aload 7
astore 6
aload 11
ifnull L34
aload 7
astore 6
aload 11
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifeq L34
aload 11
invokeinterface com/alibaba/fastjson/annotation/JSONField/name()Ljava/lang/String; 0
astore 6
L34:
aload 9
new com/alibaba/fastjson/util/FieldInfo
dup
aload 6
aconst_null
aload 10
aload 0
aload 1
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
pop
goto L31
L29:
aload 0
invokevirtual java/lang/Class/getMethods()[Ljava/lang/reflect/Method;
astore 6
aload 6
arraylength
istore 4
iconst_0
istore 3
L35:
iload 3
iload 4
if_icmpge L8
aload 6
iload 3
aaload
astore 7
aload 7
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
astore 8
aload 8
invokevirtual java/lang/String/length()I
iconst_4
if_icmpge L36
L37:
iload 3
iconst_1
iadd
istore 3
goto L35
L36:
aload 7
invokevirtual java/lang/reflect/Method/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifne L37
aload 8
ldc "get"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L37
aload 8
iconst_3
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/isUpperCase(C)Z
ifeq L37
aload 7
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
arraylength
ifne L37
ldc java/util/Collection
aload 7
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L38
ldc java/util/Map
aload 7
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L38
ldc java/util/concurrent/atomic/AtomicBoolean
aload 7
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
if_acmpeq L38
ldc java/util/concurrent/atomic/AtomicInteger
aload 7
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
if_acmpeq L38
ldc java/util/concurrent/atomic/AtomicLong
aload 7
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
if_acmpne L37
L38:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
iconst_3
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/toLowerCase(C)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 8
iconst_4
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
aload 9
aload 8
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getField(Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
ifnonnull L37
aload 9
new com/alibaba/fastjson/util/FieldInfo
dup
aload 8
aload 7
aconst_null
aload 0
aload 1
invokespecial com/alibaba/fastjson/util/FieldInfo/<init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
pop
aload 7
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
goto L37
L8:
aload 9
areturn
.limit locals 12
.limit stack 8
.end method

.method public static getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.signature "(Ljava/lang/Class<*>;)Ljava/lang/reflect/Constructor<*>;"
aconst_null
astore 3
aload 0
invokevirtual java/lang/Class/getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
astore 4
aload 4
arraylength
istore 2
iconst_0
istore 1
L0:
aload 3
astore 0
iload 1
iload 2
if_icmpge L1
aload 4
iload 1
aaload
astore 0
aload 0
ldc com/alibaba/fastjson/annotation/JSONCreator
invokevirtual java/lang/reflect/Constructor/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONCreator
ifnull L2
iconst_0
ifeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "multi-json creator"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
areturn
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 5
.limit stack 3
.end method

.method public static getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.signature "(Ljava/lang/Class<*>;)Ljava/lang/reflect/Constructor<*>;"
aload 0
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isAbstract(I)Z
ifeq L0
aconst_null
astore 4
L1:
aload 4
areturn
L0:
aconst_null
astore 4
aload 0
invokevirtual java/lang/Class/getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
astore 5
aload 5
arraylength
istore 2
iconst_0
istore 1
L2:
aload 4
astore 3
iload 1
iload 2
if_icmpge L3
aload 5
iload 1
aaload
astore 3
aload 3
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
arraylength
ifne L4
L3:
aload 3
astore 4
aload 3
ifnonnull L1
aload 3
astore 4
aload 0
invokevirtual java/lang/Class/isMemberClass()Z
ifeq L1
aload 3
astore 4
aload 0
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifne L1
aload 0
invokevirtual java/lang/Class/getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
astore 5
aload 5
arraylength
istore 2
iconst_0
istore 1
L5:
aload 3
astore 4
iload 1
iload 2
if_icmpge L1
aload 5
iload 1
aaload
astore 4
aload 4
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
arraylength
iconst_1
if_icmpne L6
aload 4
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
iconst_0
aaload
aload 0
invokevirtual java/lang/Class/getDeclaringClass()Ljava/lang/Class;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L6
aload 4
areturn
L4:
iload 1
iconst_1
iadd
istore 1
goto L2
L6:
iload 1
iconst_1
iadd
istore 1
goto L5
.limit locals 6
.limit stack 2
.end method

.method public static getFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
.signature "(Ljava/lang/Class<*>;)Ljava/lang/reflect/Method;"
aconst_null
astore 4
aload 0
invokevirtual java/lang/Class/getDeclaredMethods()[Ljava/lang/reflect/Method;
astore 5
aload 5
arraylength
istore 2
iconst_0
istore 1
L0:
aload 4
astore 3
iload 1
iload 2
if_icmpge L1
aload 5
iload 1
aaload
astore 3
aload 3
invokevirtual java/lang/reflect/Method/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifne L2
L3:
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
aload 0
aload 3
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L3
aload 3
ldc com/alibaba/fastjson/annotation/JSONCreator
invokevirtual java/lang/reflect/Method/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONCreator
ifnull L3
iconst_0
ifeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "multi-json creator"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 3
areturn
.limit locals 6
.limit stack 3
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
.signature "(Ljava/lang/Class<*>;Ljava/lang/String;)Ljava/lang/reflect/Field;"
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
invokevirtual java/lang/Class/getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/fieldList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_0
ireturn
L1:
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/fieldList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/sortedFieldList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/sortedFieldList Ljava/util/List;
invokestatic java/util/Collections/sort(Ljava/util/List;)V
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getClazz()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/clazz Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCreatorConstructor()Ljava/lang/reflect/Constructor;
.signature "()Ljava/lang/reflect/Constructor<*>;"
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/creatorConstructor Ljava/lang/reflect/Constructor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDefaultConstructor()Ljava/lang/reflect/Constructor;
.signature "()Ljava/lang/reflect/Constructor<*>;"
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/defaultConstructor Ljava/lang/reflect/Constructor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFactoryMethod()Ljava/lang/reflect/Method;
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/factoryMethod Ljava/lang/reflect/Method;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getField(Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/fieldList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
astore 3
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 3
areturn
L1:
aconst_null
areturn
.limit locals 4
.limit stack 2
.end method

.method public getFieldList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/fieldList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSortedFieldList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
aload 0
getfield com/alibaba/fastjson/util/DeserializeBeanInfo/sortedFieldList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCreatorConstructor(Ljava/lang/reflect/Constructor;)V
.signature "(Ljava/lang/reflect/Constructor<*>;)V"
aload 0
aload 1
putfield com/alibaba/fastjson/util/DeserializeBeanInfo/creatorConstructor Ljava/lang/reflect/Constructor;
return
.limit locals 2
.limit stack 2
.end method

.method public setDefaultConstructor(Ljava/lang/reflect/Constructor;)V
.signature "(Ljava/lang/reflect/Constructor<*>;)V"
aload 0
aload 1
putfield com/alibaba/fastjson/util/DeserializeBeanInfo/defaultConstructor Ljava/lang/reflect/Constructor;
return
.limit locals 2
.limit stack 2
.end method

.method public setFactoryMethod(Ljava/lang/reflect/Method;)V
aload 0
aload 1
putfield com/alibaba/fastjson/util/DeserializeBeanInfo/factoryMethod Ljava/lang/reflect/Method;
return
.limit locals 2
.limit stack 2
.end method
