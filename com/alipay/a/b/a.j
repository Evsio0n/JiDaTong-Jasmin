.bytecode 50.0
.class public final synchronized com/alipay/a/b/a
.super java/lang/Object

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
.signature "(Ljava/lang/reflect/Type;)Ljava/lang/Class<*>;"
L0:
aload 0
instanceof java/lang/Class
ifeq L1
aload 0
checkcast java/lang/Class
areturn
L1:
aload 0
instanceof java/lang/reflect/ParameterizedType
ifeq L2
aload 0
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
astore 0
goto L0
L2:
new java/lang/IllegalArgumentException
dup
ldc "TODO"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public static a(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
aload 0
invokevirtual java/lang/Class/isPrimitive()Z
ifeq L0
L1:
iconst_1
ireturn
L0:
aload 0
ldc java/lang/String
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc java/lang/Integer
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc java/lang/Long
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc java/lang/Double
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc java/lang/Float
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc java/lang/Boolean
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc java/lang/Short
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc java/lang/Character
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc java/lang/Byte
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc java/lang/Void
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
