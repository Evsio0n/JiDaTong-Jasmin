.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/crypto/h
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnull L3
aload 1
ifnull L3
aload 2
ifnonnull L0
L3:
aconst_null
areturn
L0:
aload 1
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
aload 1
aload 0
aload 2
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L1:
aload 2
areturn
L2:
astore 2
new java/lang/StringBuilder
dup
ldc "[-] can't invoke method "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/reflect/Method/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " on target "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
.signature "(Ljava/lang/String;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Ljava/lang/reflect/Method;"
.catch java/lang/NoSuchMethodException from L0 to L1 using L2
.catch java/lang/NoSuchMethodException from L1 to L3 using L4
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L5
aload 1
ifnull L5
aload 2
ifnonnull L0
L5:
aconst_null
areturn
L0:
new java/lang/StringBuilder
dup
ldc "set"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
iconst_0
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/toTitleCase(C)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
iconst_1
aload 0
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L1:
aload 1
aload 0
iconst_1
anewarray java/lang/Class
dup
iconst_0
aload 2
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 2
L3:
aload 2
areturn
L2:
astore 0
aconst_null
astore 0
L6:
new java/lang/StringBuilder
dup
ldc "[-] Not Found Method "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " in class "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aconst_null
areturn
L4:
astore 2
goto L6
.limit locals 3
.limit stack 6
.end method
