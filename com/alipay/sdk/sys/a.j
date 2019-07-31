.bytecode 50.0
.class public final synchronized com/alipay/sdk/sys/a
.super java/lang/Object

.field public static final 'a' Ljava/lang/String; = "\"&"

.field public static final 'b' Ljava/lang/String; = "&"

.field public static final 'c' Ljava/lang/String; = "bizcontext=\""

.field public static final 'd' Ljava/lang/String; = "bizcontext="

.field public static final 'e' Ljava/lang/String; = "\""

.field public static final 'f' Ljava/lang/String; = "appkey"

.field public static final 'g' Ljava/lang/String; = "ty"

.field public static final 'h' Ljava/lang/String; = "sv"

.field public static final 'i' Ljava/lang/String; = "an"

.field public static final 'j' Ljava/lang/String; = "av"

.field public static final 'k' Ljava/lang/String; = "sdk_start_time"

.field public static final 'l' Ljava/lang/String; = "UTF-8"

.field private 'm' Ljava/lang/String;

.field private 'n' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/alipay/sdk/sys/a/m Ljava/lang/String;
aload 0
ldc ""
putfield com/alipay/sdk/sys/a/n Ljava/lang/String;
L0:
aload 1
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 1
aload 0
aload 1
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
putfield com/alipay/sdk/sys/a/m Ljava/lang/String;
aload 0
aload 1
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
putfield com/alipay/sdk/sys/a/n Ljava/lang/String;
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
aload 0
aload 1
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
iconst_0
istore 3
L1:
iload 3
aload 0
arraylength
if_icmpge L2
aload 0
iload 3
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
iload 3
aaload
aload 2
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L3
aload 0
iload 3
aaload
astore 0
L4:
aload 0
areturn
L3:
iload 3
iconst_1
iadd
istore 3
goto L1
L2:
aconst_null
astore 0
goto L4
.limit locals 4
.limit stack 2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws org/json/JSONException
.throws java/io/UnsupportedEncodingException
aload 0
ldc ""
ldc ""
invokevirtual com/alipay/sdk/sys/a/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws org/json/JSONException
.throws java/io/UnsupportedEncodingException
aload 1
aload 2
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 1
new org/json/JSONObject
dup
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
aload 3
invokevirtual java/lang/String/length()I
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "appkey"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifne L0
aload 1
ldc "appkey"
ldc "2014052600006128"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
aload 1
ldc "ty"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifne L1
aload 1
ldc "ty"
ldc "and_lite"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
ldc "sv"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifne L2
aload 1
ldc "sv"
ldc "h.a.3.0.8"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
aload 1
ldc "an"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifne L3
aload 1
ldc "an"
aload 0
getfield com/alipay/sdk/sys/a/n Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 1
ldc "av"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifne L4
aload 1
ldc "av"
aload 0
getfield com/alipay/sdk/sys/a/m Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 1
ldc "sdk_start_time"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifne L5
aload 1
ldc "sdk_start_time"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L5:
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 6
.end method

.method private static b(Ljava/lang/String;)Z
aload 0
ldc "\"&"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L1 to L3 using L2
L0:
aload 1
ldc "&"
ldc "bizcontext="
invokestatic com/alipay/sdk/sys/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
ldc "bizcontext="
ldc ""
invokespecial com/alipay/sdk/sys/a/b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
aload 1
aload 3
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
aload 1
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
aload 1
iload 2
aload 3
invokevirtual java/lang/String/length()I
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
aload 3
ldc "bizcontext="
ldc ""
invokespecial com/alipay/sdk/sys/a/b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L3:
aload 3
areturn
L2:
astore 3
aload 1
areturn
.limit locals 6
.limit stack 5
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L4 to L5 using L2
L0:
aload 1
ldc "\"&"
ldc "bizcontext=\""
invokestatic com/alipay/sdk/sys/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
ldc "bizcontext=\""
ldc "\""
invokespecial com/alipay/sdk/sys/a/b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
aload 4
astore 3
L3:
aload 4
ldc "\""
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifne L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L4:
aload 1
aload 3
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
aload 1
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
aload 1
iload 2
aload 3
invokevirtual java/lang/String/length()I
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
aload 3
ldc "bizcontext=\""
ldc "\""
invokespecial com/alipay/sdk/sys/a/b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L5:
aload 3
areturn
L2:
astore 3
aload 1
areturn
.limit locals 6
.limit stack 5
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
aload 1
areturn
L0:
aload 1
ldc "new_external_info=="
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L1
aload 1
ldc "\"&"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L2
iconst_1
istore 2
L3:
iload 2
ifeq L4
aload 0
aload 1
invokespecial com/alipay/sdk/sys/a/c(Ljava/lang/String;)Ljava/lang/String;
areturn
L2:
iconst_0
istore 2
goto L3
L4:
aload 0
aload 1
invokespecial com/alipay/sdk/sys/a/d(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L1 to L3 using L2
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "appkey"
ldc "2014052600006128"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "ty"
ldc "and_lite"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "sv"
ldc "h.a.3.0.8"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "an"
aload 0
getfield com/alipay/sdk/sys/a/n Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "av"
aload 0
getfield com/alipay/sdk/sys/a/m Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "sdk_start_time"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 3
aload 1
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 1
L3:
aload 1
areturn
L2:
astore 1
ldc ""
areturn
.limit locals 4
.limit stack 4
.end method
