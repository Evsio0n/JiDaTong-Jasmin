.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/ASMUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getDesc(Ljava/lang/Class;)Ljava/lang/String;
.signature "(Ljava/lang/Class<*>;)Ljava/lang/String;"
aload 0
invokevirtual java/lang/Class/isPrimitive()Z
ifeq L0
aload 0
invokestatic com/alibaba/fastjson/util/ASMUtils/getPrimitiveLetter(Ljava/lang/Class;)Ljava/lang/String;
areturn
L0:
aload 0
invokevirtual java/lang/Class/isArray()Z
ifeq L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "L"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokestatic com/alibaba/fastjson/util/ASMUtils/getType(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
ldc "("
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
invokevirtual java/lang/reflect/Method/getParameterTypes()[Ljava/lang/Class;
astore 3
iconst_0
istore 1
L0:
iload 1
aload 3
arraylength
if_icmpge L1
aload 2
aload 3
iload 1
aaload
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 2
ldc ")"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
aload 0
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/Class<*>;Ljava/lang/String;)Ljava/lang/reflect/Type;"
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
invokevirtual java/lang/Class/getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
invokevirtual java/lang/reflect/Field/getGenericType()Ljava/lang/reflect/Type;
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

.method public static getMethodType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;
.signature "(Ljava/lang/Class<*>;Ljava/lang/String;)Ljava/lang/reflect/Type;"
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
invokevirtual java/lang/reflect/Method/getGenericReturnType()Ljava/lang/reflect/Type;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getPrimitiveLetter(Ljava/lang/Class;)Ljava/lang/String;
.signature "(Ljava/lang/Class<*>;)Ljava/lang/String;"
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
ldc "I"
areturn
L0:
getstatic java/lang/Void/TYPE Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
ldc "V"
areturn
L1:
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
ldc "Z"
areturn
L2:
getstatic java/lang/Character/TYPE Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L3
ldc "C"
areturn
L3:
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L4
ldc "B"
areturn
L4:
getstatic java/lang/Short/TYPE Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L5
ldc "S"
areturn
L5:
getstatic java/lang/Float/TYPE Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L6
ldc "F"
areturn
L6:
getstatic java/lang/Long/TYPE Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L7
ldc "J"
areturn
L7:
getstatic java/lang/Double/TYPE Ljava/lang/Class;
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L8
ldc "D"
areturn
L8:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Type: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Class/getCanonicalName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is not a primitive type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static getType(Ljava/lang/Class;)Ljava/lang/String;
.signature "(Ljava/lang/Class<*>;)Ljava/lang/String;"
aload 0
invokevirtual java/lang/Class/isArray()Z
ifeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
invokestatic com/alibaba/fastjson/util/ASMUtils/getDesc(Ljava/lang/Class;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 0
invokevirtual java/lang/Class/isPrimitive()Z
ifne L1
aload 0
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "\\."
ldc "/"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
L1:
aload 0
invokestatic com/alibaba/fastjson/util/ASMUtils/getPrimitiveLetter(Ljava/lang/Class;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static isAndroid()Z
ldc "java.vm.name"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/alibaba/fastjson/util/ASMUtils/isAndroid(Ljava/lang/String;)Z
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static isAndroid(Ljava/lang/String;)Z
aload 0
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
astore 0
aload 0
ldc "dalvik"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
ldc "lemur"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 4
aload 4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L0
aload 4
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L0:
aload 2
bipush 14
bipush 14
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(II)V
iconst_0
istore 5
L1:
aload 0
aload 1
aload 2
aload 3
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
iload 5
iconst_1
iadd
istore 5
aload 4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L2
aload 4
bipush 14
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
goto L1
L2:
aload 2
bipush 15
bipush 16
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(II)V
return
.limit locals 6
.limit stack 5
.end method
