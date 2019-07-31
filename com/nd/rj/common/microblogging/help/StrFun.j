.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/help/StrFun
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static UnicodeToString(Ljava/lang/String;)Ljava/lang/String;
ldc "(\\\\u(\\p{XDigit}{4}))"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 2
L0:
aload 2
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 2
iconst_2
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
bipush 16
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;I)I
i2c
istore 1
aload 0
aload 2
iconst_1
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
goto L0
L1:
aload 0
areturn
.limit locals 3
.limit stack 4
.end method

.method public static dip2px(Landroid/content/Context;F)I
fload 1
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fmul
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnull L3
aload 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L0
L3:
aconst_null
areturn
L0:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
getstatic java/lang/System/err Ljava/io/PrintStream;
invokevirtual java/lang/Exception/printStackTrace(Ljava/io/PrintStream;)V
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getSNSStringLength(Ljava/lang/String;)I
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
aload 0
ifnonnull L3
L4:
iconst_0
ireturn
L3:
aconst_null
astore 1
L0:
aload 0
ldc "GBK"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 0
L1:
aload 0
ifnull L4
aload 0
arraylength
i2f
fconst_2
fdiv
ldc_w 0.5F
fadd
f2i
ireturn
L2:
astore 0
aload 0
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
aload 1
astore 0
goto L1
.limit locals 2
.limit stack 2
.end method
