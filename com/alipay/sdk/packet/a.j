.bytecode 50.0
.class public final synchronized com/alipay/sdk/packet/a
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
astore 0
L1:
aload 0
areturn
L0:
aload 0
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 9
aload 9
arraylength
ifne L2
ldc ""
areturn
L2:
aload 9
arraylength
istore 2
iconst_0
istore 1
aconst_null
astore 6
aconst_null
astore 5
aconst_null
astore 7
aconst_null
astore 8
L3:
iload 1
iload 2
if_icmpge L4
aload 9
iload 1
aaload
astore 10
aload 8
astore 0
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 10
ldc "biz_type"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L6
aconst_null
astore 0
L5:
aload 7
astore 3
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
aload 10
ldc "biz_no"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L8
aconst_null
astore 3
L7:
aload 5
astore 4
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
aload 10
ldc "trade_no"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L10
aload 10
ldc "out_trade_no"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L11
L10:
aconst_null
astore 4
L9:
aload 6
astore 5
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L12
aload 10
ldc "app_userid"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L13
aconst_null
astore 5
L12:
iload 1
iconst_1
iadd
istore 1
aload 5
astore 6
aload 0
astore 8
aload 3
astore 7
aload 4
astore 5
goto L3
L6:
aload 10
invokestatic com/alipay/sdk/packet/a/e(Ljava/lang/String;)Ljava/lang/String;
astore 0
goto L5
L8:
aload 10
invokestatic com/alipay/sdk/packet/a/e(Ljava/lang/String;)Ljava/lang/String;
astore 3
goto L7
L11:
aload 10
invokestatic com/alipay/sdk/packet/a/e(Ljava/lang/String;)Ljava/lang/String;
astore 4
goto L9
L13:
aload 10
invokestatic com/alipay/sdk/packet/a/e(Ljava/lang/String;)Ljava/lang/String;
astore 5
goto L12
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 0
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L14
aload 0
new java/lang/StringBuilder
dup
ldc "biz_type="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L14:
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L15
aload 0
new java/lang/StringBuilder
dup
ldc "biz_no="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L15:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L16
aload 0
new java/lang/StringBuilder
dup
ldc "trade_no="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L16:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L17
aload 0
new java/lang/StringBuilder
dup
ldc "app_userid="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L17:
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 3
astore 0
aload 3
ldc ";"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L1
aload 3
iconst_0
aload 3
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 11
.limit stack 4
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "biz_type"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L0
aconst_null
areturn
L0:
aload 0
invokestatic com/alipay/sdk/packet/a/e(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "biz_no"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L0
aconst_null
areturn
L0:
aload 0
invokestatic com/alipay/sdk/packet/a/e(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "trade_no"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc "out_trade_no"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L1
L0:
aconst_null
areturn
L1:
aload 0
invokestatic com/alipay/sdk/packet/a/e(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 1
aconst_null
astore 0
aload 1
arraylength
iconst_1
if_icmple L0
aload 1
iconst_1
aaload
astore 1
aload 1
astore 0
aload 1
ldc "\""
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
aload 1
ldc "\""
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L0:
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "app_userid"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L0
aconst_null
areturn
L0:
aload 0
invokestatic com/alipay/sdk/packet/a/e(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
