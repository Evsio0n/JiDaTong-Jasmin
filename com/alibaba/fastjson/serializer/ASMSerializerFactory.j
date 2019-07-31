.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ASMSerializerFactory
.super java/lang/Object
.implements com/alibaba/fastjson/asm/Opcodes
.inner class static Context inner com/alibaba/fastjson/serializer/ASMSerializerFactory$Context outer com/alibaba/fastjson/serializer/ASMSerializerFactory

.field private 'classLoader' Lcom/alibaba/fastjson/util/ASMClassLoader;

.field private final 'seed' Ljava/util/concurrent/atomic/AtomicLong;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/alibaba/fastjson/util/ASMClassLoader
dup
invokespecial com/alibaba/fastjson/util/ASMClassLoader/<init>()V
putfield com/alibaba/fastjson/serializer/ASMSerializerFactory/classLoader Lcom/alibaba/fastjson/util/ASMClassLoader;
aload 0
new java/util/concurrent/atomic/AtomicLong
dup
invokespecial java/util/concurrent/atomic/AtomicLong/<init>()V
putfield com/alibaba/fastjson/serializer/ASMSerializerFactory/seed Ljava/util/concurrent/atomic/AtomicLong;
return
.limit locals 1
.limit stack 3
.end method

.method private _after(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 1
bipush 25
aload 2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 21
aload 2
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeAfter"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 54
aload 2
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
.limit locals 3
.limit stack 5
.end method

.method private _apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpne L0
aload 1
bipush 21
aload 3
ldc "byte"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L0:
aload 2
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpne L1
aload 1
bipush 21
aload 3
ldc "short"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L1:
aload 2
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L2
aload 1
bipush 21
aload 3
ldc "int"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L2:
aload 2
getstatic java/lang/Character/TYPE Ljava/lang/Class;
if_acmpne L3
aload 1
bipush 21
aload 3
ldc "char"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L3:
aload 2
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L4
aload 1
bipush 22
aload 3
ldc "long"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L4:
aload 2
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpne L5
aload 1
bipush 23
aload 3
ldc "float"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L5:
aload 2
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpne L6
aload 1
bipush 24
aload 3
ldc "double"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L6:
aload 2
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpne L7
aload 1
bipush 21
aload 3
ldc "boolean"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L7:
aload 2
ldc java/math/BigDecimal
if_acmpne L8
aload 1
bipush 25
aload 3
ldc "decimal"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L8:
aload 2
ldc java/lang/String
if_acmpne L9
aload 1
bipush 25
aload 3
ldc "string"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L9:
aload 2
invokevirtual java/lang/Class/isEnum()Z
ifeq L10
aload 1
bipush 25
aload 3
ldc "enum"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L10:
ldc java/util/List
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L11
aload 1
bipush 25
aload 3
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L11:
aload 1
bipush 25
aload 3
ldc "object"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "apply"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
.limit locals 4
.limit stack 5
.end method

.method private _before(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 1
bipush 25
aload 2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 21
aload 2
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeBefore"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 54
aload 2
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
.limit locals 3
.limit stack 5
.end method

.method private _boolean(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 54
aload 4
ldc "boolean"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "boolean"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;Z)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _byte(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 54
aload 4
ldc "byte"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "byte"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _char(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 54
aload 4
ldc "char"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "char"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 58
aload 4
ldc "decimal"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 5
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 6
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 7
aload 2
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
ldc "decimal"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 199
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 2
aload 3
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
sipush 167
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "decimal"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;Ljava/math/BigDecimal;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
sipush 167
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 8
.limit stack 5
.end method

.method private _double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 57
aload 4
ldc "double"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 24
aload 4
ldc "double"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;D)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
iconst_0
istore 7
iconst_0
istore 5
aload 3
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual com/alibaba/fastjson/util/FieldInfo/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 1
aload 1
ifnull L0
aload 1
invokeinterface com/alibaba/fastjson/annotation/JSONField/serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature; 0
astore 1
aload 1
arraylength
istore 8
iconst_0
istore 6
L1:
iload 5
istore 7
iload 6
iload 8
if_icmpge L0
aload 1
iload 6
aaload
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteEnumUsingToString Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L2
iconst_1
istore 5
L2:
iload 6
iconst_1
iadd
istore 6
goto L1
L0:
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 10
aload 0
aload 2
aload 3
aload 4
aload 10
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
sipush 192
ldc java/lang/Enum
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 58
aload 4
ldc "enum"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 10
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "enum"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 199
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 2
aload 3
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
sipush 167
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "enum"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
iload 7
ifeq L3
aload 2
sipush 182
ldc java/lang/Object
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "toString"
ldc "()Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;Ljava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L4:
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
aload 10
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
L3:
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(CLjava/lang/String;L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Enum
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";)V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L4
.limit locals 11
.limit stack 6
.end method

.method private _filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getField()Ljava/lang/reflect/Field;
ifnull L0
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getField()Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getModifiers()I
invokestatic java/lang/reflect/Modifier/isTransient(I)Z
ifeq L0
aload 1
bipush 25
aload 3
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 178
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "SkipTransientField"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "isEnabled"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")Z"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 154
aload 4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
L0:
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 1
sipush 153
aload 4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 5
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/original()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/processValue()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 165
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 1
aload 2
aload 3
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 1
sipush 167
aload 4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 6
.limit stack 6
.end method

.method private _float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 56
aload 4
ldc "float"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 23
aload 4
ldc "float"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;F)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
astore 4
aload 4
ifnull L0
aload 1
bipush 25
aload 2
ldc "entity"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
aload 4
invokevirtual java/lang/reflect/Method/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aload 4
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
aload 4
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
L0:
aload 1
bipush 25
aload 2
ldc "entity"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getField()Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
.limit locals 5
.limit stack 5
.end method

.method private _if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 16
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 20
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 17
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 18
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 19
aload 1
aload 20
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
iconst_0
istore 10
iconst_0
istore 8
iconst_0
istore 13
iconst_0
istore 5
iconst_0
istore 14
iconst_0
istore 4
iconst_0
istore 11
iconst_0
istore 6
iconst_0
istore 12
iconst_0
istore 7
aload 2
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual com/alibaba/fastjson/util/FieldInfo/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 2
aload 2
ifnull L0
aload 2
invokeinterface com/alibaba/fastjson/annotation/JSONField/serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature; 0
astore 2
aload 2
arraylength
istore 15
iconst_0
istore 9
L1:
iload 8
istore 10
iload 6
istore 11
iload 7
istore 12
iload 5
istore 13
iload 4
istore 14
iload 9
iload 15
if_icmpge L0
aload 2
iload 9
aaload
astore 20
aload 20
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteMapNullValue Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L2
iconst_1
istore 10
iload 4
istore 13
iload 5
istore 12
iload 6
istore 11
L3:
iload 9
iconst_1
iadd
istore 9
iload 10
istore 8
iload 11
istore 6
iload 12
istore 5
iload 13
istore 4
goto L1
L2:
aload 20
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L4
iconst_1
istore 12
iload 8
istore 10
iload 6
istore 11
iload 4
istore 13
goto L3
L4:
aload 20
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullStringAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L5
iconst_1
istore 13
iload 8
istore 10
iload 6
istore 11
iload 5
istore 12
goto L3
L5:
aload 20
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullBooleanAsFalse Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L6
iconst_1
istore 11
iload 8
istore 10
iload 5
istore 12
iload 4
istore 13
goto L3
L6:
iload 8
istore 10
iload 6
istore 11
iload 5
istore 12
iload 4
istore 13
aload 20
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L3
iconst_1
istore 7
iload 8
istore 10
iload 6
istore 11
iload 5
istore 12
iload 4
istore 13
goto L3
L0:
iload 10
ifne L7
aload 1
bipush 25
aload 3
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 178
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "WriteMapNullValue"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "isEnabled"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")Z"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 153
aload 17
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
L7:
aload 1
aload 18
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 1
bipush 25
aload 3
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 21
aload 3
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 16
ldc java/lang/String
if_acmpeq L8
aload 16
ldc java/lang/Character
if_acmpne L9
L8:
iload 14
ifeq L10
aload 1
ldc ""
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;Ljava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L11:
aload 0
aload 1
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 1
sipush 167
aload 19
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
aload 17
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 1
aload 19
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
L10:
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldNullString"
ldc "(CLjava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L11
L9:
ldc java/lang/Number
aload 16
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L12
iload 13
ifeq L13
aload 1
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L11
L13:
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldNullNumber"
ldc "(CLjava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L11
L12:
aload 16
ldc java/lang/Boolean
if_acmpne L14
iload 11
ifeq L15
aload 1
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;Z)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L11
L15:
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldNullBoolean"
ldc "(CLjava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L11
L14:
ldc java/util/Collection
aload 16
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L16
aload 16
invokevirtual java/lang/Class/isArray()Z
ifeq L17
L16:
iload 12
ifeq L18
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldEmptyList"
ldc "(CLjava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L11
L18:
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldNullList"
ldc "(CLjava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L11
L17:
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldNull"
ldc "(CLjava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L11
.limit locals 21
.limit stack 6
.end method

.method private _int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 54
aload 4
ldc "int"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "int"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
astore 1
aload 1
instanceof java/lang/Class
ifeq L0
ldc java/lang/Object
astore 1
L1:
aconst_null
astore 5
aload 1
instanceof java/lang/Class
ifeq L2
aload 1
checkcast java/lang/Class
astore 5
L2:
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 6
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 7
aload 2
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 0
aload 2
aload 3
aload 4
aload 6
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
sipush 192
ldc java/util/List
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 58
aload 4
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 6
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 199
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 2
aload 3
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
sipush 167
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldName"
ldc "(Ljava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
aload 4
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 185
ldc java/util/List
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "size"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 54
aload 4
ldc "int"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 3
aload 2
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 21
aload 4
ldc "int"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
sipush 160
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
ldc "[]"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(Ljava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 167
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setContext"
ldc "(Ljava/lang/Object;Ljava/lang/Object;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 16
bipush 91
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
sipush 192
ldc com/alibaba/fastjson/serializer/ObjectSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 58
aload 4
ldc "list_ser"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
aload 2
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
bipush 54
aload 4
ldc "i"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 21
aload 4
ldc "i"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "int"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
iconst_4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
bipush 100
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
sipush 162
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
ldc java/lang/String
if_acmpne L3
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "i"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 185
ldc java/util/List
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "get"
ldc "(I)Ljava/lang/Object;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 192
ldc java/lang/String
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 16
bipush 44
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeString"
ldc "(Ljava/lang/String;C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L4:
aload 2
aload 4
ldc "i"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitIincInsn(II)V 2
aload 2
sipush 167
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 1
ldc java/lang/String
if_acmpne L5
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "int"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
iconst_4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
bipush 100
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
sipush 185
ldc java/util/List
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "get"
ldc "(I)Ljava/lang/Object;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 192
ldc java/lang/String
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 16
bipush 93
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeString"
ldc "(Ljava/lang/String;C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L6:
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "popContext"
ldc "()V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
L0:
aload 1
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 1
goto L1
L3:
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "i"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 185
ldc java/util/List
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "get"
ldc "(I)Ljava/lang/Object;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 21
aload 4
ldc "i"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 184
ldc java/lang/Integer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(I)Ljava/lang/Integer;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 5
ifnull L7
aload 5
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isPublic(I)Z
ifeq L7
aload 2
aload 1
checkcast java/lang/Class
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFieldName"
ldc "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L8:
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 16
bipush 44
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L4
L7:
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFieldName"
ldc "(Ljava/lang/Object;Ljava/lang/Object;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L8
L5:
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "i"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 185
ldc java/util/List
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "get"
ldc "(I)Ljava/lang/Object;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 21
aload 4
ldc "i"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 184
ldc java/lang/Integer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(I)Ljava/lang/Integer;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 5
ifnull L9
aload 5
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isPublic(I)Z
ifeq L9
aload 2
aload 1
checkcast java/lang/Class
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFieldName"
ldc "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L10:
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 16
bipush 93
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L6
L9:
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFieldName"
ldc "(Ljava/lang/Object;Ljava/lang/Object;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L10
.limit locals 10
.limit stack 5
.end method

.method private _long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 55
aload 4
ldc "long"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 22
aload 4
ldc "long"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;J)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "applyName"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 153
aload 4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
return
.limit locals 5
.limit stack 5
.end method

.method private _object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 58
aload 4
ldc "object"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpne L0
aload 1
bipush 21
aload 3
ldc "byte"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L1:
aload 1
bipush 58
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
L0:
aload 2
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpne L2
aload 1
bipush 21
aload 3
ldc "short"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L2:
aload 2
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L3
aload 1
bipush 21
aload 3
ldc "int"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L3:
aload 2
getstatic java/lang/Character/TYPE Ljava/lang/Class;
if_acmpne L4
aload 1
bipush 21
aload 3
ldc "char"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L4:
aload 2
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L5
aload 1
bipush 22
aload 3
ldc "long"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L5:
aload 2
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpne L6
aload 1
bipush 23
aload 3
ldc "float"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L6:
aload 2
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpne L7
aload 1
bipush 24
aload 3
ldc "double"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L7:
aload 2
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpne L8
aload 1
bipush 21
aload 3
ldc "boolean"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L8:
aload 2
ldc java/math/BigDecimal
if_acmpne L9
aload 1
bipush 25
aload 3
ldc "decimal"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L9:
aload 2
ldc java/lang/String
if_acmpne L10
aload 1
bipush 25
aload 3
ldc "string"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L10:
aload 2
invokevirtual java/lang/Class/isEnum()Z
ifeq L11
aload 1
bipush 25
aload 3
ldc "enum"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L11:
ldc java/util/List
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L12
aload 1
bipush 25
aload 3
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L12:
aload 1
bipush 25
aload 3
ldc "object"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processKey"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
.limit locals 4
.limit stack 5
.end method

.method private _processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpne L0
aload 1
bipush 21
aload 3
ldc "byte"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc java/lang/Byte
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(B)Ljava/lang/Byte;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L1:
aload 1
bipush 58
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/original()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/original()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/serializer/FilterUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "processValue"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/processValue()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
L0:
aload 2
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpne L2
aload 1
bipush 21
aload 3
ldc "short"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc java/lang/Short
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(S)Ljava/lang/Short;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L2:
aload 2
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L3
aload 1
bipush 21
aload 3
ldc "int"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc java/lang/Integer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(I)Ljava/lang/Integer;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L3:
aload 2
getstatic java/lang/Character/TYPE Ljava/lang/Class;
if_acmpne L4
aload 1
bipush 21
aload 3
ldc "char"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc java/lang/Character
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(C)Ljava/lang/Character;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L4:
aload 2
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L5
aload 1
bipush 22
aload 3
ldc "long"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc java/lang/Long
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(J)Ljava/lang/Long;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L5:
aload 2
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpne L6
aload 1
bipush 23
aload 3
ldc "float"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc java/lang/Float
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(F)Ljava/lang/Float;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L6:
aload 2
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpne L7
aload 1
bipush 24
aload 3
ldc "double"
iconst_2
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc java/lang/Double
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(D)Ljava/lang/Double;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L7:
aload 2
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpne L8
aload 1
bipush 21
aload 3
ldc "boolean"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc java/lang/Boolean
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(Z)Ljava/lang/Boolean;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L8:
aload 2
ldc java/math/BigDecimal
if_acmpne L9
aload 1
bipush 25
aload 3
ldc "decimal"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L1
L9:
aload 2
ldc java/lang/String
if_acmpne L10
aload 1
bipush 25
aload 3
ldc "string"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L1
L10:
aload 2
invokevirtual java/lang/Class/isEnum()Z
ifeq L11
aload 1
bipush 25
aload 3
ldc "enum"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L1
L11:
ldc java/util/List
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L12
aload 1
bipush 25
aload 3
ldc "list"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L1
L12:
aload 1
bipush 25
aload 3
ldc "object"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L1
.limit locals 4
.limit stack 5
.end method

.method private _seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 1
bipush 16
bipush 44
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 54
aload 2
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
.limit locals 3
.limit stack 4
.end method

.method private _short(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 54
aload 4
ldc "short"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "short"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 0
aload 2
aload 4
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 58
aload 4
ldc "string"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 3
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 5
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 6
aload 2
bipush 25
aload 4
ldc "string"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 199
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 2
aload 3
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
sipush 167
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "string"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldValue"
ldc "(CLjava/lang/String;Ljava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 7
.limit stack 5
.end method

.method private _writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFormat()Ljava/lang/String;
astore 5
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 6
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/processValue()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 199
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 1
sipush 167
aload 4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 1
bipush 25
aload 3
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 21
aload 3
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 25
aload 3
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFieldName"
ldc "(Ljava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/processValue()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 5
ifnull L0
aload 1
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFormat"
ldc "(Ljava/lang/Object;Ljava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L1:
aload 0
aload 1
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
return
L0:
aload 1
bipush 25
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
instanceof java/lang/Class
ifeq L2
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
checkcast java/lang/Class
invokevirtual java/lang/Class/isPrimitive()Z
ifeq L2
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFieldName"
ldc "(Ljava/lang/Object;Ljava/lang/Object;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L2:
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_fieldType"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "Ljava/lang/reflect/Type;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFieldName"
ldc "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
.limit locals 7
.limit stack 5
.end method

.method private generateWriteAsArray(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
.throws java/lang/Exception
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 16
bipush 91
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 3
invokeinterface java/util/List/size()I 0
istore 7
iload 7
ifne L0
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 16
bipush 93
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L1:
return
L0:
iconst_0
istore 5
L2:
iload 5
iload 7
if_icmpge L1
iload 5
iload 7
iconst_1
isub
if_icmpne L3
bipush 93
istore 6
L4:
aload 3
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
astore 1
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 8
aload 2
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
bipush 58
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 8
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpeq L5
aload 8
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpeq L5
aload 8
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L6
L5:
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 16
iload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeIntAndChar"
ldc "(IC)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L7:
iload 5
iconst_1
iadd
istore 5
goto L2
L3:
bipush 44
istore 6
goto L4
L6:
aload 8
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L8
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 16
iload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeLongAndChar"
ldc "(JC)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L7
L8:
aload 8
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpne L9
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 16
iload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeFloatAndChar"
ldc "(FC)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L7
L9:
aload 8
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpne L10
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 16
iload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeDoubleAndChar"
ldc "(DC)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L7
L10:
aload 8
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpne L11
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 16
iload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeBooleanAndChar"
ldc "(ZC)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L7
L11:
aload 8
getstatic java/lang/Character/TYPE Ljava/lang/Class;
if_acmpne L12
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 16
iload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeCharacterAndChar"
ldc "(CC)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L7
L12:
aload 8
ldc java/lang/String
if_acmpne L13
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 16
iload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeString"
ldc "(Ljava/lang/String;C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L7
L13:
aload 8
invokevirtual java/lang/Class/isEnum()Z
ifeq L14
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 16
iload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeEnum"
ldc "(Ljava/lang/Enum;C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L7
L14:
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFormat()Ljava/lang/String;
astore 8
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
aload 1
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 8
ifnull L15
aload 2
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFormat"
ldc "(Ljava/lang/Object;Ljava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L16:
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 16
iload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L7
L15:
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
instanceof java/lang/Class
ifeq L17
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
checkcast java/lang/Class
invokevirtual java/lang/Class/isPrimitive()Z
ifeq L17
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFieldName"
ldc "(Ljava/lang/Object;Ljava/lang/Object;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L16
L17:
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_fieldType"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "Ljava/lang/reflect/Type;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeWithFieldName"
ldc "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L16
.limit locals 9
.limit stack 5
.end method

.method private generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
.throws java/lang/Exception
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 7
aload 3
invokeinterface java/util/List/size()I 0
istore 6
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 178
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "PrettyFormat"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "isEnabled"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")Z"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 153
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getClassName()Ljava/lang/String;
ldc "nature"
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 199
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 1
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/initNature(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getClassName()Ljava/lang/String;
ldc "nature"
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "containsReference"
ldc "(Ljava/lang/Object;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 153
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getClassName()Ljava/lang/String;
ldc "nature"
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 199
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 1
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/initNature(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getClassName()Ljava/lang/String;
ldc "nature"
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "writeReference"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/paramFieldType()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "isWriteAsArray"
ldc "(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 153
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getClassName()Ljava/lang/String;
ldc "writeAsArray"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getContext"
ldc "()Lcom/alibaba/fastjson/serializer/SerialContext;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 58
aload 4
ldc "parent"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "parent"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/paramFieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setContext"
ldc "(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 10
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/paramFieldType()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "isWriteClassName"
ldc "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 153
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/paramFieldType()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc java/lang/Object
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getClass"
ldc "()Ljava/lang/Class;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 165
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 10
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "{\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\":\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(Ljava/lang/String;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 16
bipush 44
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 167
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 16
bipush 123
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 54
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_before(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
iconst_0
istore 5
L0:
iload 5
iload 6
if_icmpge L1
aload 3
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
astore 8
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 9
aload 2
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
bipush 58
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/fieldName()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 9
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpne L2
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_byte(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
L3:
iload 5
iconst_1
iadd
istore 5
goto L0
L2:
aload 9
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpne L4
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_short(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L4:
aload 9
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L5
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L5:
aload 9
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L6
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L6:
aload 9
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpne L7
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L7:
aload 9
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpne L8
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L8:
aload 9
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpne L9
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_boolean(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L9:
aload 9
getstatic java/lang/Character/TYPE Ljava/lang/Class;
if_acmpne L10
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_char(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L10:
aload 9
ldc java/lang/String
if_acmpne L11
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L11:
aload 9
ldc java/math/BigDecimal
if_acmpne L12
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L12:
ldc java/util/List
aload 9
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L13
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L13:
aload 9
invokevirtual java/lang/Class/isEnum()Z
ifeq L14
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L14:
aload 0
aload 1
aload 2
aload 8
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
goto L3
L1:
aload 0
aload 2
aload 4
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/_after(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 1
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 3
aload 2
bipush 21
aload 4
ldc "seperator"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 16
bipush 123
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitIntInsn(II)V 2
aload 2
sipush 160
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 16
bipush 123
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 16
bipush 125
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "write"
ldc "(C)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 4
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 4
ldc "parent"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setContext"
ldc "(Lcom/alibaba/fastjson/serializer/SerialContext;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
.limit locals 11
.limit stack 6
.end method

.method private initNature(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V"
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 187
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
aload 1
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 183
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Class
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 181
aload 3
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getClassName()Ljava/lang/String;
ldc "nature"
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
.limit locals 4
.limit stack 6
.end method

.method public createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.signature "(Ljava/lang/Class<*>;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
.throws java/lang/Exception
aload 0
aload 1
aconst_null
checkcast java/util/Map
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory/createJavaBeanSerializer(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
areturn
.limit locals 2
.limit stack 3
.end method

.method public createJavaBeanSerializer(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.signature "(Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
.throws java/lang/Exception
aload 1
invokevirtual java/lang/Class/isPrimitive()Z
ifeq L0
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unsupportd class "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
aload 2
iconst_0
invokestatic com/alibaba/fastjson/util/TypeUtils/computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
astore 5
aload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory/getGenClassName(Ljava/lang/Class;)Ljava/lang/String;
astore 3
new com/alibaba/fastjson/asm/ClassWriter
dup
invokespecial com/alibaba/fastjson/asm/ClassWriter/<init>()V
astore 4
aload 4
bipush 49
bipush 33
aload 3
ldc "java/lang/Object"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "com/alibaba/fastjson/serializer/ObjectSerializer"
aastore
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
aload 4
iconst_2
ldc "nature"
ldc com/alibaba/fastjson/serializer/JavaBeanSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;
invokeinterface com/alibaba/fastjson/asm/FieldVisitor/visitEnd()V 0
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L1:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
astore 7
aload 4
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_fieldPrefix"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "Ljava/lang/reflect/Type;"
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;
invokeinterface com/alibaba/fastjson/asm/FieldVisitor/visitEnd()V 0
aload 4
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_fieldType"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "Ljava/lang/reflect/Type;"
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;
invokeinterface com/alibaba/fastjson/asm/FieldVisitor/visitEnd()V 0
goto L1
L2:
aload 4
iconst_1
ldc "<init>"
ldc "()V"
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 6
aload 6
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 6
sipush 183
ldc "java/lang/Object"
ldc "<init>"
ldc "()V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L3:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
astore 8
aload 6
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 6
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
ifnull L5
aload 6
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 6
sipush 184
ldc com/alibaba/fastjson/util/ASMUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getMethodType"
ldc "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L6:
aload 6
sipush 181
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_fieldType"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "Ljava/lang/reflect/Type;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L3
L5:
aload 6
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getField()Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 6
sipush 184
ldc com/alibaba/fastjson/util/ASMUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getFieldType"
ldc "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L6
L4:
aload 6
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 6
iconst_4
iconst_4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
new com/alibaba/fastjson/serializer/ASMSerializerFactory$Context
dup
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/<init>(Ljava/lang/String;)V
astore 6
aload 4
iconst_1
ldc "write"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
aconst_null
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "java/io/IOException"
aastore
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 7
aload 7
bipush 25
aload 6
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 7
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getWriter"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 7
bipush 58
aload 6
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
ldc com/alibaba/fastjson/annotation/JSONType
invokevirtual java/lang/Class/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONType
astore 8
aload 8
ifnull L7
aload 8
invokeinterface com/alibaba/fastjson/annotation/JSONType/alphabetic()Z 0
ifeq L8
L7:
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
aload 7
bipush 25
aload 6
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 7
sipush 178
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "SortField"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 7
sipush 182
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "isEnabled"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")Z"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 7
sipush 153
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 7
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 7
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 7
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 7
bipush 25
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 7
bipush 25
aload 6
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/paramFieldType()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 7
sipush 182
aload 3
ldc "write1"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 7
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 7
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
L8:
aload 7
bipush 25
aload 6
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 7
sipush 192
aload 1
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 7
bipush 58
aload 6
ldc "entity"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 7
aload 5
aload 6
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 7
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 7
iconst_5
aload 6
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getVariantCount()I
iconst_1
iadd
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
aload 1
aload 2
iconst_1
invokestatic com/alibaba/fastjson/util/TypeUtils/computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
astore 2
new com/alibaba/fastjson/serializer/ASMSerializerFactory$Context
dup
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/<init>(Ljava/lang/String;)V
astore 5
aload 4
iconst_1
ldc "write1"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
aconst_null
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "java/io/IOException"
aastore
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 6
aload 6
bipush 25
aload 5
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 6
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getWriter"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 6
bipush 58
aload 5
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 6
bipush 25
aload 5
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 6
sipush 192
aload 1
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 6
bipush 58
aload 5
ldc "entity"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 6
aload 2
aload 5
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 6
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 6
iconst_5
aload 5
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getVariantCount()I
iconst_1
iadd
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
new com/alibaba/fastjson/serializer/ASMSerializerFactory$Context
dup
aload 3
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/<init>(Ljava/lang/String;)V
astore 5
aload 4
iconst_1
ldc "writeAsArray"
ldc "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"
aconst_null
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "java/io/IOException"
aastore
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 6
aload 6
bipush 25
aload 5
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/serializer()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 6
sipush 182
ldc com/alibaba/fastjson/serializer/JSONSerializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getWriter"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/serializer/SerializeWriter
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 6
bipush 58
aload 5
ldc "out"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 6
bipush 25
aload 5
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/obj()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 6
sipush 192
aload 1
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 6
bipush 58
aload 5
ldc "entity"
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 6
aload 2
aload 5
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/generateWriteAsArray(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
aload 6
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 6
iconst_5
aload 5
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/getVariantCount()I
iconst_1
iadd
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
aload 4
invokevirtual com/alibaba/fastjson/asm/ClassWriter/toByteArray()[B
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory/classLoader Lcom/alibaba/fastjson/util/ASMClassLoader;
aload 3
aload 1
iconst_0
aload 1
arraylength
invokevirtual com/alibaba/fastjson/util/ASMClassLoader/defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast com/alibaba/fastjson/serializer/ObjectSerializer
areturn
.limit locals 9
.limit stack 9
.end method

.method public getGenClassName(Ljava/lang/Class;)Ljava/lang/String;
.signature "(Ljava/lang/Class<*>;)Ljava/lang/String;"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Serializer_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory/seed Ljava/util/concurrent/atomic/AtomicLong;
invokevirtual java/util/concurrent/atomic/AtomicLong/incrementAndGet()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory/classLoader Lcom/alibaba/fastjson/util/ASMClassLoader;
aload 1
invokevirtual com/alibaba/fastjson/util/ASMClassLoader/isExternalClass(Ljava/lang/Class;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
