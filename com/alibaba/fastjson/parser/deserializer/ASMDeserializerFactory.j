.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory
.super java/lang/Object
.implements com/alibaba/fastjson/asm/Opcodes
.inner class static Context inner com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context outer com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory

.field private static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

.field private 'classLoader' Lcom/alibaba/fastjson/util/ASMClassLoader;

.field private final 'seed' Ljava/util/concurrent/atomic/AtomicLong;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory
dup
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/instance Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/alibaba/fastjson/util/ASMClassLoader
dup
invokespecial com/alibaba/fastjson/util/ASMClassLoader/<init>()V
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/classLoader Lcom/alibaba/fastjson/util/ASMClassLoader;
aload 0
new java/util/concurrent/atomic/AtomicLong
dup
invokespecial java/util/concurrent/atomic/AtomicLong/<init>()V
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/seed Ljava/util/concurrent/atomic/AtomicLong;
return
.limit locals 1
.limit stack 3
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 0
aload 1
aload 2
iconst_1
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V
return
.limit locals 3
.limit stack 4
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V
iconst_0
istore 4
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 5
L0:
iload 4
iload 5
if_icmpge L1
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 6
iload 3
ifeq L2
aload 0
aload 2
aload 1
iload 4
aload 6
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V
L2:
aload 0
aload 1
aload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
iload 3
ifeq L3
aload 2
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
L3:
iload 4
iconst_1
iadd
istore 4
goto L0
L1:
return
.limit locals 7
.limit stack 5
.end method

.method private _createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
aload 1
iconst_1
ldc "createInstance"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/reflect/Type
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")Ljava/lang/Object;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 1
aload 1
sipush 187
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 183
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
ldc "()V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 176
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
iconst_3
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
return
.limit locals 3
.limit stack 6
.end method

.method private _createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getBeanInfo()Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getDefaultConstructor()Ljava/lang/reflect/Constructor;
invokevirtual java/lang/reflect/Constructor/getModifiers()I
invokestatic java/lang/reflect/Modifier/isPublic(I)Z
ifeq L0
aload 2
sipush 187
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
sipush 183
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
ldc "()V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 58
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
L0:
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 183
ldc com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "createInstance"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")Ljava/lang/Object;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 192
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 58
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
.limit locals 3
.limit stack 6
.end method

.method private _deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
.signature "(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class<*>;)V"
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
instanceof java/lang/Class
ifeq L0
aload 2
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
L1:
aload 2
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 185
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "deserialze"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/reflect/Type
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Ljava/lang/Object;)Ljava/lang/Object;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 192
aload 4
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 58
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
L0:
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getFieldType"
ldc "(Ljava/lang/String;)Ljava/lang/reflect/Type;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
.limit locals 5
.limit stack 6
.end method

.method private _deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 4
aload 2
bipush 21
aload 1
ldc "matchedCount"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitIntInsn(II)V 2
aload 2
sipush 158
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "token"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "RBRACE"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 160
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "COMMA"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "nextToken"
ldc "(I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 5
.limit stack 5
.end method

.method private _deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V
.signature "(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class<*>;Ljava/lang/Class<*>;I)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "matchField"
ldc "([C)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 154
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
bipush 58
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 167
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 0
aload 2
aload 1
iload 7
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "token"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "NULL"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 160
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "COMMA"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "nextToken"
ldc "(I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
sipush 192
aload 5
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 58
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "token"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "LBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 160
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 1
aload 2
aload 4
aload 6
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
aload 2
sipush 185
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getFastMatchToken"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 54
aload 1
ldc "fastMatchToken"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 1
ldc "fastMatchToken"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "nextToken"
ldc "(I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 5
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;)V
aload 2
bipush 58
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getContext"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 58
aload 1
ldc "listContext"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setContext"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(Ljava/lang/Object;Ljava/lang/Object;)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 87
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 10
aload 2
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
bipush 54
aload 1
ldc "i"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "token"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "RBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 159
aload 10
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_list_item_deser__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
aload 6
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
bipush 21
aload 1
ldc "i"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 184
ldc java/lang/Integer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
ldc "(I)Ljava/lang/Integer;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 185
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "deserialze"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 58
aload 1
ldc "list_item_value"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
aload 1
ldc "i"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitIincInsn(II)V 2
aload 2
bipush 25
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
ldc "list_item_value"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 5
invokevirtual java/lang/Class/isInterface()Z
ifeq L0
aload 2
sipush 185
aload 5
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "add"
ldc "(Ljava/lang/Object;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L1:
aload 2
bipush 87
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "checkListResolve"
ldc "(Ljava/util/Collection;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "token"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "COMMA"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 160
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 1
ldc "fastMatchToken"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "nextToken"
ldc "(I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 167
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 10
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
ldc "listContext"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setContext"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "token"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "RBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 160
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "COMMA"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "nextToken"
ldc "(I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
L0:
aload 2
sipush 182
aload 5
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "add"
ldc "(Ljava/lang/Object;)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
.limit locals 11
.limit stack 6
.end method

.method private _deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V
.signature "(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class<*>;I)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 3
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 7
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "matchField"
ldc "([C)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 154
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
bipush 58
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 167
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 0
aload 2
aload 1
iload 6
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V
aload 2
bipush 21
aload 1
ldc "matchedCount"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
iconst_4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
bipush 96
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 2
bipush 54
aload 1
ldc "matchedCount"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 2
aload 4
aload 5
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getResolveStatus"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "NeedToResolve"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 160
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getLastResolveTask"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 58
aload 1
ldc "resolveTask"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
ldc "resolveTask"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getContext"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setOwnerContext"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
aload 1
ldc "resolveTask"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
aload 4
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getFieldDeserializer"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(Ljava/lang/String;)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/deserializer/FieldDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setFieldDeserializer"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/deserializer/FieldDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "NONE"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setResolveStatus"
ldc "(I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 8
.limit stack 6
.end method

.method private _getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
.signature "(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class<*>;)V"
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 5
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_list_item_deser__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 199
aload 5
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
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getConfig"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParserConfig
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 4
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/ParserConfig
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getDeserializer"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/reflect/Type
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 181
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_list_item_deser__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_list_item_deser__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
.limit locals 6
.limit stack 6
.end method

.method private _getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 4
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_deser__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 199
aload 4
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
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getConfig"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParserConfig
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/ParserConfig
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getDeserializer"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/reflect/Type
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 181
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_deser__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 180
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_deser__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
.limit locals 5
.limit stack 6
.end method

.method private _init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
iconst_0
istore 3
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 4
L0:
iload 3
iload 4
if_icmpge L1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
astore 5
aload 1
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;
invokeinterface com/alibaba/fastjson/asm/FieldVisitor/visitEnd()V 0
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
iconst_0
istore 3
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 4
L2:
iload 3
iload 4
if_icmpge L3
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
astore 5
aload 5
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 6
aload 6
invokevirtual java/lang/Class/isPrimitive()Z
ifeq L4
L5:
iload 3
iconst_1
iadd
istore 3
goto L2
L4:
aload 6
invokevirtual java/lang/Class/isEnum()Z
ifne L5
ldc java/util/Collection
aload 6
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L6
aload 1
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_list_item_deser__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;
invokeinterface com/alibaba/fastjson/asm/FieldVisitor/visitEnd()V 0
goto L5
L6:
aload 1
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_deser__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;
invokeinterface com/alibaba/fastjson/asm/FieldVisitor/visitEnd()V 0
goto L5
L3:
aload 1
iconst_1
ldc "<init>"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParserConfig
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Class
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 1
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 183
ldc com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParserConfig
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Class
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
ldc com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "serializer"
ldc com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getFieldDeserializerMap"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/util/Map
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 87
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
iconst_0
istore 3
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 4
L7:
iload 3
iload 4
if_icmpge L8
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
astore 5
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
sipush 182
ldc java/lang/String
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "toCharArray"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc [C
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 181
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
iload 3
iconst_1
iadd
istore 3
goto L7
L8:
aload 1
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
iconst_4
iconst_4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
return
.limit locals 7
.limit stack 6
.end method

.method private _isEnable(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/Feature;)V
aload 2
bipush 25
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 178
ldc com/alibaba/fastjson/parser/Feature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aload 3
invokevirtual com/alibaba/fastjson/parser/Feature/name()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/Feature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "isEnabled"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/Feature
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")Z"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
return
.limit locals 4
.limit stack 6
.end method

.method private _loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 4
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
astore 5
aload 4
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpne L0
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
L1:
return
L0:
aload 4
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpeq L2
aload 4
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpeq L2
aload 4
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpeq L2
aload 4
getstatic java/lang/Character/TYPE Ljava/lang/Class;
if_acmpne L3
L2:
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 21
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
return
L3:
aload 4
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L4
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 22
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
ifnull L5
aload 2
sipush 182
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
getstatic java/lang/Void/TYPE Ljava/lang/Class;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 2
bipush 87
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
return
L5:
aload 2
sipush 181
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
L4:
aload 4
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpne L6
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 23
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
return
L6:
aload 4
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpne L7
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 24
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
return
L7:
aload 4
ldc java/lang/String
if_acmpne L8
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
return
L8:
aload 4
invokevirtual java/lang/Class/isEnum()Z
ifeq L9
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
return
L9:
ldc java/util/Collection
aload 4
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L10
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 5
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
ldc java/lang/String
if_acmpne L11
aload 2
bipush 25
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 192
aload 4
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
L12:
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
return
L11:
aload 2
bipush 25
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L12
L10:
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
return
.limit locals 6
.limit stack 5
.end method

.method private _newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;)V
.signature "(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class<*>;)V"
aload 2
ldc java/util/ArrayList
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L0
aload 1
sipush 187
ldc java/util/ArrayList
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 183
ldc java/util/ArrayList
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
ldc "()V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L1:
aload 1
sipush 192
aload 2
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
return
L0:
aload 2
ldc java/util/LinkedList
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L2
aload 1
sipush 187
ldc java/util/LinkedList
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 183
ldc java/util/LinkedList
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
ldc "()V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L2:
aload 2
ldc java/util/HashSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L3
aload 1
sipush 187
ldc java/util/HashSet
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 183
ldc java/util/HashSet
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
ldc "()V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L3:
aload 2
ldc java/util/TreeSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L4
aload 1
sipush 187
ldc java/util/TreeSet
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 183
ldc java/util/TreeSet
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
ldc "()V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
L4:
aload 1
sipush 187
aload 2
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 183
aload 2
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
ldc "()V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L1
.limit locals 3
.limit stack 5
.end method

.method private _set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
ifnull L0
aload 2
sipush 182
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
getstatic java/lang/Void/TYPE Ljava/lang/Class;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 2
bipush 87
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
L1:
return
L0:
aload 2
sipush 181
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
.limit locals 4
.limit stack 5
.end method

.method private _setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
ldc "context"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setContext"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 3
aload 2
bipush 25
aload 1
ldc "childContext"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 198
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 2
bipush 25
aload 1
ldc "childContext"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
bipush 25
aload 1
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setObject"
ldc "(Ljava/lang/Object;)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
aload 3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
return
.limit locals 4
.limit stack 6
.end method

.method private defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 2
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 2
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getLexer"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/JSONLexer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 2
sipush 192
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 2
bipush 58
aload 1
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
.limit locals 3
.limit stack 6
.end method

.method private getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
.signature "(Ljava/lang/reflect/Type;)Ljava/lang/Class<*>;"
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L0
aload 1
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 1
aload 1
instanceof java/lang/Class
ifeq L1
aload 1
checkcast java/lang/Class
astore 2
aload 2
astore 1
aload 2
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isPublic(I)Z
ifne L2
new com/alibaba/fastjson/asm/ASMException
dup
ldc "can not create ASMParser"
invokespecial com/alibaba/fastjson/asm/ASMException/<init>(Ljava/lang/String;)V
athrow
L1:
new com/alibaba/fastjson/asm/ASMException
dup
ldc "can not create ASMParser"
invokespecial com/alibaba/fastjson/asm/ASMException/<init>(Ljava/lang/String;)V
athrow
L0:
ldc java/lang/Object
astore 1
L2:
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public static final getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
getstatic com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/instance Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
areturn
.limit locals 0
.limit stack 1
.end method

.method _deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L0
L1:
return
L0:
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L2:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
astore 7
aload 7
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 6
aload 7
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
astore 7
aload 6
getstatic java/lang/Character/TYPE Ljava/lang/Class;
if_acmpeq L1
ldc java/util/Collection
aload 6
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L2
aload 7
instanceof java/lang/reflect/ParameterizedType
ifeq L1
aload 7
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
instanceof java/lang/Class
ifeq L1
goto L2
L3:
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 1
iconst_1
ldc "deserialze"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/reflect/Type
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Ljava/lang/Object;)Ljava/lang/Object;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 1
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
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 8
aload 0
aload 2
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 0
aload 2
aload 1
getstatic com/alibaba/fastjson/parser/Feature/SortFeidFastMatch Lcom/alibaba/fastjson/parser/Feature;
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_isEnable(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/Feature;)V
aload 1
sipush 153
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "token"
ldc "()I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "LBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 160
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 183
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
ldc "deserialzeArrayMapping"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/reflect/Type
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Ljava/lang/Object;)Ljava/lang/Object;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 176
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanType"
ldc "(Ljava/lang/String;)I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "NOT_MATCH"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 159
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getContext"
ldc "()Lcom/alibaba/fastjson/parser/ParseContext;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 2
ldc "mark_context"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 54
aload 2
ldc "matchedCount"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getContext"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 2
ldc "context"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 2
ldc "context"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 2
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "setContext"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Ljava/lang/Object;Ljava/lang/Object;)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParseContext
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 2
ldc "childContext"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "matchStat"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "END"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 159
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 54
aload 2
ldc "matchStat"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitIntInsn(II)V 2
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 4
iconst_0
istore 3
L4:
iload 3
iload 4
if_icmpge L5
aload 1
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 54
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "_asm_flag_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
bipush 32
idiv
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
iload 3
bipush 32
iadd
istore 3
goto L4
L5:
iconst_0
istore 3
L6:
iload 3
iload 4
if_icmpge L7
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
astore 9
aload 9
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 10
aload 10
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpeq L8
aload 10
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpeq L8
aload 10
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpeq L8
aload 10
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L9
L8:
aload 1
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 54
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
L10:
iload 3
iconst_1
iadd
istore 3
goto L6
L9:
aload 10
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L11
aload 1
bipush 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 55
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L10
L11:
aload 10
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpne L12
aload 1
bipush 11
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 56
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L10
L12:
aload 10
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpne L13
aload 1
bipush 14
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 57
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L10
L13:
aload 10
ldc java/lang/String
if_acmpne L14
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 11
aload 0
aload 2
aload 1
getstatic com/alibaba/fastjson/parser/Feature/InitStringFieldAsEmpty Lcom/alibaba/fastjson/parser/Feature;
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_isEnable(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/Feature;)V
aload 1
sipush 153
aload 11
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 1
aload 2
iload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V
aload 1
aload 11
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "stringDefaultValue"
ldc "()Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L15:
aload 1
sipush 192
aload 10
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L10
L14:
aload 1
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
goto L15
L7:
iconst_0
istore 3
L16:
iload 3
iload 4
if_icmpge L17
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getFieldInfoList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
astore 10
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 11
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
astore 12
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 9
aload 11
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpne L18
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldBoolean"
ldc "([C)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 54
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
L19:
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "matchStat"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 10
aload 1
sipush 158
aload 10
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 0
aload 1
aload 2
iload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V
aload 1
aload 10
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "matchStat"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 54
aload 2
ldc "matchStat"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "NOT_MATCH"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 159
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "matchStat"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 158
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
bipush 21
aload 2
ldc "matchedCount"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
iconst_4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 96
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 54
aload 2
ldc "matchedCount"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "matchStat"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "END"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 159
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
iload 3
iload 4
iconst_1
isub
if_icmpne L20
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "matchStat"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "END"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 160
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
L20:
iload 3
iconst_1
iadd
istore 3
goto L16
L18:
aload 11
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpne L21
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldInt"
ldc "([C)I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 54
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L19
L21:
aload 11
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpne L22
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldInt"
ldc "([C)I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 54
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L19
L22:
aload 11
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L23
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldInt"
ldc "([C)I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 54
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L19
L23:
aload 11
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L24
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldLong"
ldc "([C)J"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 55
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L19
L24:
aload 11
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpne L25
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldFloat"
ldc "([C)F"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 56
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L19
L25:
aload 11
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpne L26
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldDouble"
ldc "([C)D"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 57
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L19
L26:
aload 11
ldc java/lang/String
if_acmpne L27
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 11
aload 1
bipush 21
aload 2
ldc "matchStat"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitIntInsn(II)V 2
aload 1
bipush 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 160
aload 11
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "stringDefaultValue"
ldc "()Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 167
aload 9
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
aload 11
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldString"
ldc "([C)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L19
L27:
aload 11
invokevirtual java/lang/Class/isEnum()Z
ifeq L28
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
new com/alibaba/fastjson/asm/Label
dup
invokespecial com/alibaba/fastjson/asm/Label/<init>()V
astore 12
aload 1
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 192
aload 11
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getSymbolTable"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/SymbolTable
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldSymbol"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "([C"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/SymbolTable
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")Ljava/lang/String;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_enumName"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 198
aload 12
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
aload 1
bipush 25
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_enumName"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
aload 11
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "valueOf"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(Ljava/lang/String;)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
aload 12
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
goto L19
L28:
ldc java/util/Collection
aload 11
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L29
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 180
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClassName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm_prefix__"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "[C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 12
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
astore 12
aload 12
ldc java/lang/String
if_acmpne L30
aload 1
aload 11
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFieldStringArray"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "([CLjava/lang/Class;)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/util/Collection
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L19
L30:
aload 0
aload 2
aload 1
aload 5
aload 10
aload 11
aload 12
iload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V
iload 3
iload 4
iconst_1
isub
if_icmpne L20
aload 0
aload 2
aload 1
aload 5
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V
goto L20
L29:
aload 0
aload 2
aload 1
aload 5
aload 10
aload 11
iload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V
iload 3
iload 4
iconst_1
isub
if_icmpne L20
aload 0
aload 2
aload 1
aload 5
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V
goto L20
L17:
aload 1
aload 8
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokevirtual java/lang/Class/isInterface()Z
ifne L31
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isAbstract(I)Z
ifne L31
aload 0
aload 2
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
L31:
aload 1
aload 7
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 0
aload 2
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 1
bipush 25
aload 2
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 176
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 0
aload 2
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
aload 2
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "parseRest"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/reflect/Type
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 192
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getClazz()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
sipush 176
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
aload 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLabel(Lcom/alibaba/fastjson/asm/Label;)V 1
aload 1
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 25
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 183
ldc com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "deserialze"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/reflect/Type
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Ljava/lang/Object;)Ljava/lang/Object;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 176
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
iconst_5
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getVariantCount()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
return
.limit locals 13
.limit stack 8
.end method

.method _deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
aload 1
iconst_1
ldc "deserialzeArrayMapping"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/reflect/Type
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Ljava/lang/Object;)Ljava/lang/Object;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 1
aload 0
aload 2
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 0
aload 2
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getBeanInfo()Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getSortedFieldList()Ljava/util/List;
astore 7
aload 7
invokeinterface java/util/List/size()I 0
istore 6
iconst_0
istore 3
L0:
iload 3
iload 6
if_icmpge L1
iload 3
iload 6
iconst_1
isub
if_icmpne L2
iconst_1
istore 4
L3:
iload 4
ifeq L4
bipush 93
istore 5
L5:
aload 7
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
astore 8
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 9
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
astore 10
aload 9
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpeq L6
aload 9
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpeq L6
aload 9
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L7
L6:
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 16
iload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanInt"
ldc "(C)I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 54
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
L8:
iload 3
iconst_1
iadd
istore 3
goto L0
L2:
iconst_0
istore 4
goto L3
L4:
bipush 44
istore 5
goto L5
L7:
aload 9
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L9
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 16
iload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanLong"
ldc "(C)J"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 55
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L8
L9:
aload 9
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpne L10
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 16
iload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanBoolean"
ldc "(C)Z"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 54
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L8
L10:
aload 9
getstatic java/lang/Float/TYPE Ljava/lang/Class;
if_acmpne L11
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 16
iload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanFloat"
ldc "(C)F"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 56
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L8
L11:
aload 9
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpne L12
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 16
iload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanDouble"
ldc "(C)D"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 57
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;I)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L8
L12:
aload 9
getstatic java/lang/Character/TYPE Ljava/lang/Class;
if_acmpne L13
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 16
iload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanString"
ldc "(C)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 182
ldc java/lang/String
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "charAt"
ldc "(I)C"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 54
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L8
L13:
aload 9
ldc java/lang/String
if_acmpne L14
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
bipush 16
iload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanString"
ldc "(C)Ljava/lang/String;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L8
L14:
aload 9
invokevirtual java/lang/Class/isEnum()Z
ifeq L15
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
aload 9
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "getSymbolTable"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/SymbolTable
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 16
iload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanEnum"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(Ljava/lang/Class;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/SymbolTable
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "C)Ljava/lang/Enum;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 192
aload 9
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L8
L15:
ldc java/util/Collection
aload 9
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L16
aload 0
aload 10
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
astore 10
aload 10
ldc java/lang/String
if_acmpne L17
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
aload 9
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
bipush 16
iload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "scanStringArray"
ldc "(Ljava/lang/Class;C)Ljava/util/Collection;"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
goto L8
L17:
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
iload 3
ifne L18
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "LBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L19:
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "LBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "accept"
ldc "(II)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 1
aload 9
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;)V
aload 1
bipush 89
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_asm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 0
aload 2
aload 1
aload 8
aload 10
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
aload 10
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/asm/Type/getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
bipush 25
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 184
ldc com/alibaba/fastjson/util/ASMUtils
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "parseArray"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "(Ljava/util/Collection;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Ljava/lang/reflect/Type;Ljava/lang/Object;)V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L8
L18:
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "COMMA"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L19
L16:
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
iload 3
ifne L20
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "LBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L21:
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "LBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "accept"
ldc "(II)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 0
aload 2
aload 1
aload 8
aload 9
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
aload 1
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
iload 4
ifne L22
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "COMMA"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "LBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L23:
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/DefaultJSONParser
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "accept"
ldc "(II)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L8
L20:
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "COMMA"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L21
L22:
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "RBRACKET"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "EOF"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
goto L23
L1:
aload 0
aload 2
aload 1
iconst_0
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V
aload 1
bipush 25
aload 2
ldc "lexer"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 178
ldc com/alibaba/fastjson/parser/JSONToken
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "COMMA"
ldc "I"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
sipush 182
ldc com/alibaba/fastjson/parser/JSONLexerBase
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "nextToken"
ldc "(I)V"
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 1
bipush 25
aload 2
ldc "instance"
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
sipush 176
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
iconst_5
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/getVariantCount()I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
return
.limit locals 11
.limit stack 6
.end method

.method _isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V
aload 1
bipush 21
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "_asm_flag_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
bipush 32
idiv
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
iconst_1
iload 3
ishl
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
bipush 126
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
sipush 153
aload 4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V 2
return
.limit locals 5
.limit stack 6
.end method

.method _setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "_asm_flag_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
bipush 32
idiv
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 1
bipush 21
aload 2
aload 4
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 1
iconst_1
iload 3
ishl
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitLdcInsn(Ljava/lang/Object;)V 1
aload 1
sipush 128
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 1
bipush 54
aload 2
aload 4
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/var(Ljava/lang/String;)I
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
return
.limit locals 5
.limit stack 4
.end method

.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
.throws java/lang/Exception
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 4
aload 4
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpeq L0
aload 4
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpeq L0
aload 4
ldc java/lang/String
if_acmpne L1
L0:
aload 0
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/createStringFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
areturn
L1:
aload 1
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/createFieldDeserializerWithoutASM(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
areturn
.limit locals 5
.limit stack 4
.end method

.method public createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
.throws java/lang/Exception
aload 2
invokevirtual java/lang/Class/isPrimitive()Z
ifeq L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "not support type :"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/getGenClassName(Ljava/lang/Class;)Ljava/lang/String;
astore 4
new com/alibaba/fastjson/asm/ClassWriter
dup
invokespecial com/alibaba/fastjson/asm/ClassWriter/<init>()V
astore 5
aload 5
bipush 49
bipush 33
aload 4
ldc com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
aload 2
aload 3
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
astore 3
aload 0
aload 5
new com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context
dup
aload 4
aload 1
aload 3
iconst_3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
aload 0
aload 5
new com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context
dup
aload 4
aload 1
aload 3
iconst_3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
aload 0
aload 5
new com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context
dup
aload 4
aload 1
aload 3
iconst_4
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
aload 0
aload 5
new com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context
dup
aload 4
aload 1
aload 3
iconst_4
invokespecial com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/_deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
aload 5
invokevirtual com/alibaba/fastjson/asm/ClassWriter/toByteArray()[B
astore 3
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/classLoader Lcom/alibaba/fastjson/util/ASMClassLoader;
aload 4
aload 3
iconst_0
aload 3
arraylength
invokevirtual com/alibaba/fastjson/util/ASMClassLoader/defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;
iconst_2
anewarray java/lang/Class
dup
iconst_0
ldc com/alibaba/fastjson/parser/ParserConfig
aastore
dup
iconst_1
ldc java/lang/Class
aastore
invokevirtual java/lang/Class/getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
areturn
.limit locals 6
.limit stack 8
.end method

.method public createStringFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
.throws java/lang/Exception
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 9
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
astore 7
aload 0
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/getGenFieldDeserializer(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;
astore 6
new com/alibaba/fastjson/asm/ClassWriter
dup
invokespecial com/alibaba/fastjson/asm/ClassWriter/<init>()V
astore 8
aload 9
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L0
ldc com/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer
astore 5
L1:
aload 2
invokevirtual java/lang/Class/isInterface()Z
ifeq L2
sipush 185
istore 4
L3:
aload 8
bipush 49
bipush 33
aload 6
aload 5
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
aload 8
iconst_1
ldc "<init>"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParserConfig
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Class
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/util/FieldInfo
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 10
aload 10
bipush 25
iconst_0
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 10
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 10
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 10
bipush 25
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 10
sipush 183
aload 5
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
ldc "<init>"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/parser/ParserConfig
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Class
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc com/alibaba/fastjson/util/FieldInfo
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 10
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 10
iconst_4
bipush 6
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 10
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
aload 7
ifnull L4
aload 9
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L5
aload 8
iconst_1
ldc "setValue"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Object
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "I)V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 5
aload 5
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 5
sipush 192
aload 7
invokevirtual java/lang/reflect/Method/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 5
bipush 21
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 5
iload 4
aload 7
invokevirtual java/lang/reflect/Method/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aload 7
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
aload 7
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 5
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 5
iconst_3
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
L4:
aload 8
invokevirtual com/alibaba/fastjson/asm/ClassWriter/toByteArray()[B
astore 5
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/classLoader Lcom/alibaba/fastjson/util/ASMClassLoader;
aload 6
aload 5
iconst_0
aload 5
arraylength
invokevirtual com/alibaba/fastjson/util/ASMClassLoader/defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;
iconst_3
anewarray java/lang/Class
dup
iconst_0
ldc com/alibaba/fastjson/parser/ParserConfig
aastore
dup
iconst_1
ldc java/lang/Class
aastore
dup
iconst_2
ldc com/alibaba/fastjson/util/FieldInfo
aastore
invokevirtual java/lang/Class/getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
dup
iconst_2
aload 3
aastore
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
areturn
L0:
aload 9
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L6
ldc com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer
astore 5
goto L1
L6:
ldc com/alibaba/fastjson/parser/deserializer/StringFieldDeserializer
astore 5
goto L1
L2:
sipush 182
istore 4
goto L3
L5:
aload 9
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L7
aload 8
iconst_1
ldc "setValue"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Object
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "J)V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 5
aload 5
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 5
sipush 192
aload 7
invokevirtual java/lang/reflect/Method/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 5
bipush 22
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 5
iload 4
aload 7
invokevirtual java/lang/reflect/Method/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aload 7
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
aload 7
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 5
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 5
iconst_3
iconst_4
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
goto L4
L7:
aload 8
iconst_1
ldc "setValue"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Object
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc java/lang/Object
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")V"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/ClassWriter/visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
astore 5
aload 5
bipush 25
iconst_1
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 5
sipush 192
aload 7
invokevirtual java/lang/reflect/Method/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 5
bipush 25
iconst_2
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitVarInsn(II)V 2
aload 5
sipush 192
aload 9
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitTypeInsn(ILjava/lang/String;)V 2
aload 5
iload 4
aload 7
invokevirtual java/lang/reflect/Method/getDeclaringClass()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
aload 7
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
aload 7
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
aload 5
sipush 177
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitInsn(I)V 1
aload 5
iconst_3
iconst_3
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitMaxs(II)V 2
aload 5
invokeinterface com/alibaba/fastjson/asm/MethodVisitor/visitEnd()V 0
goto L4
.limit locals 11
.limit stack 6
.end method

.method public getGenClassName(Ljava/lang/Class;)Ljava/lang/String;
.signature "(Ljava/lang/Class<*>;)Ljava/lang/String;"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fastjson_ASM_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/seed Ljava/util/concurrent/atomic/AtomicLong;
invokevirtual java/util/concurrent/atomic/AtomicLong/incrementAndGet()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getGenFieldDeserializer(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fastjson_ASM__Field_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/seed Ljava/util/concurrent/atomic/AtomicLong;
invokevirtual java/util/concurrent/atomic/AtomicLong/incrementAndGet()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/classLoader Lcom/alibaba/fastjson/util/ASMClassLoader;
aload 1
invokevirtual com/alibaba/fastjson/util/ASMClassLoader/isExternalClass(Ljava/lang/Class;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
