.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/common/ValidateUtil
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static length(Ljava/lang/String;)I
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
L0:
new java/lang/String
dup
aload 0
ldc "gb2312"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
ldc "iso-8859-1"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 1
L1:
aload 1
astore 0
L4:
aload 0
invokevirtual java/lang/String/length()I
ireturn
L2:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L4
L3:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method
