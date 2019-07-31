.bytecode 50.0
.class public final synchronized com/alipay/sdk/app/statistic/c
.super java/lang/Object

.field public static final 'a' Ljava/lang/String; = "net"

.field public static final 'b' Ljava/lang/String; = "biz"

.field public static final 'c' Ljava/lang/String; = "cp"

.field public static final 'd' Ljava/lang/String; = "H5PayNetworkError"

.field public static final 'e' Ljava/lang/String; = "H5AuthNetworkError"

.field public static final 'f' Ljava/lang/String; = "SSLError"

.field public static final 'g' Ljava/lang/String; = "H5PayDataAnalysisError"

.field public static final 'h' Ljava/lang/String; = "H5AuthDataAnalysisError"

.field public static final 'i' Ljava/lang/String; = "ClientSignError"

.field public static final 'j' Ljava/lang/String; = "ClientBindFailed"

.field public static final 'k' Ljava/lang/String; = "TriDesEncryptError"

.field public static final 'l' Ljava/lang/String; = "TriDesDecryptError"

.field public static final 'm' Ljava/lang/String; = "ClientBindException"

.field public static final 'n' Ljava/lang/String; = "partner"

.field public static final 'o' Ljava/lang/String; = "out_trade_no"

.field public static final 'p' Ljava/lang/String; = "trade_no"

.field 'q' Ljava/lang/String;

.field 'r' Ljava/lang/String;

.field 's' Ljava/lang/String;

.field 't' Ljava/lang/String;

.field 'u' Ljava/lang/String;

.field 'v' Ljava/lang/String;

.field 'w' Ljava/lang/String;

.field 'x' Ljava/lang/String;

.field 'y' Ljava/lang/String;

.field 'z' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/alipay/sdk/app/statistic/c/y Ljava/lang/String;
aload 0
ldc "123456789,%s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd-HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/alipay/sdk/app/statistic/c/q Ljava/lang/String;
aload 0
aload 1
invokestatic com/alipay/sdk/app/statistic/c/a(Landroid/content/Context;)Ljava/lang/String;
putfield com/alipay/sdk/app/statistic/c/s Ljava/lang/String;
aload 0
ldc "android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-"
iconst_2
anewarray java/lang/Object
dup
iconst_0
ldc "15.0.8"
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
ldc "h.a.3.0.8"
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/alipay/sdk/app/statistic/c/t Ljava/lang/String;
aload 0
ldc "%s,%s,-,-,-"
iconst_2
anewarray java/lang/Object
dup
iconst_0
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
invokevirtual com/alipay/sdk/sys/b/c()Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/alipay/sdk/app/statistic/c/u Ljava/lang/String;
aload 0
ldc "%s,%s,%s,%s,%s,%s,%s,%s,%s,-"
bipush 9
anewarray java/lang/Object
dup
iconst_0
aload 1
invokestatic com/alipay/sdk/util/a/d(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
ldc "android"
aastore
dup
iconst_2
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_3
getstatic android/os/Build/MODEL Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_4
ldc "-"
aastore
dup
iconst_5
aload 1
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 6
aload 1
invokestatic com/alipay/sdk/util/a/b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;
invokevirtual com/alipay/sdk/util/d/a()Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 7
ldc "gw"
aastore
dup
bipush 8
aload 1
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/alipay/sdk/app/statistic/c/v Ljava/lang/String;
aload 0
ldc "-"
putfield com/alipay/sdk/app/statistic/c/w Ljava/lang/String;
aload 0
ldc "-"
putfield com/alipay/sdk/app/statistic/c/x Ljava/lang/String;
aload 0
ldc "-"
putfield com/alipay/sdk/app/statistic/c/z Ljava/lang/String;
return
.limit locals 2
.limit stack 8
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
ldc "-"
astore 2
ldc "-"
astore 4
aload 4
astore 3
aload 2
astore 1
aload 0
ifnull L7
aload 2
astore 1
L0:
aload 0
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
astore 3
L1:
aload 2
astore 1
L3:
aload 3
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 0
L4:
aload 0
astore 1
L5:
aload 3
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
astore 3
L6:
aload 0
astore 1
L7:
ldc "%s,%s,-,-,-"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 3
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L2:
astore 0
aload 4
astore 3
goto L7
.limit locals 5
.limit stack 5
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
areturn
L0:
aload 0
ldc "["
ldc "\u3010"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "]"
ldc "\u3011"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "("
ldc "\uff08"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc ")"
ldc "\uff09"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc ","
ldc "\uff0c"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "-"
ldc "="
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "^"
ldc "~"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
aload 0
ifnonnull L5
ldc ""
areturn
L5:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
L0:
aload 2
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc ":"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
aload 0
invokevirtual java/lang/Throwable/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
ldc " \u300b "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
invokevirtual java/lang/Throwable/getStackTrace()[Ljava/lang/StackTraceElement;
astore 0
L1:
aload 0
ifnull L6
iconst_0
istore 1
L3:
iload 1
aload 0
arraylength
if_icmpge L6
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
iload 1
aaload
invokevirtual java/lang/StackTraceElement/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " \u300b "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
astore 0
L6:
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method

.method private a()Z
aload 0
getfield com/alipay/sdk/app/statistic/c/y Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static b()Ljava/lang/String;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SimpleDateFormat" 
.end annotation
ldc "123456789,%s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd-HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 7
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
ldc "%s,%s,%s,%s,%s,%s,%s,%s,%s,-"
bipush 9
anewarray java/lang/Object
dup
iconst_0
aload 0
invokestatic com/alipay/sdk/util/a/d(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
ldc "android"
aastore
dup
iconst_2
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_3
getstatic android/os/Build/MODEL Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_4
ldc "-"
aastore
dup
iconst_5
aload 0
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 6
aload 0
invokestatic com/alipay/sdk/util/a/b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;
invokevirtual com/alipay/sdk/util/d/a()Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
bipush 7
ldc "gw"
aastore
dup
bipush 8
aload 0
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 5
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
aconst_null
astore 6
aconst_null
astore 4
aload 0
getfield com/alipay/sdk/app/statistic/c/y Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
areturn
L0:
aload 1
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 7
aload 7
ifnull L1
aload 7
arraylength
istore 3
iconst_0
istore 2
aconst_null
astore 1
L2:
aload 4
astore 6
aload 1
astore 5
iload 2
iload 3
if_icmpge L3
aload 7
iload 2
aaload
ldc "="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 8
aload 4
astore 5
aload 1
astore 6
aload 8
ifnull L4
aload 4
astore 5
aload 1
astore 6
aload 8
arraylength
iconst_2
if_icmpne L4
aload 8
iconst_0
aaload
ldc "partner"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
aload 8
iconst_1
aaload
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
pop
aload 1
astore 6
aload 4
astore 5
L4:
iload 2
iconst_1
iadd
istore 2
aload 5
astore 4
aload 6
astore 1
goto L2
L5:
aload 8
iconst_0
aaload
ldc "out_trade_no"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L6
aload 8
iconst_1
aaload
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 6
aload 4
astore 5
goto L4
L6:
aload 4
astore 5
aload 1
astore 6
aload 8
iconst_0
aaload
ldc "trade_no"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 8
iconst_1
aaload
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 5
aload 1
astore 6
goto L4
L1:
aconst_null
astore 5
L3:
aload 6
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 5
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 0
ldc "%s,%s,-,%s,-,-,-"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 4
aastore
dup
iconst_2
aload 4
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/alipay/sdk/app/statistic/c/r Ljava/lang/String;
ldc "[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]"
bipush 10
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/alipay/sdk/app/statistic/c/q Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/alipay/sdk/app/statistic/c/r Ljava/lang/String;
aastore
dup
iconst_2
aload 0
getfield com/alipay/sdk/app/statistic/c/s Ljava/lang/String;
aastore
dup
iconst_3
aload 0
getfield com/alipay/sdk/app/statistic/c/t Ljava/lang/String;
aastore
dup
iconst_4
aload 0
getfield com/alipay/sdk/app/statistic/c/u Ljava/lang/String;
aastore
dup
iconst_5
aload 0
getfield com/alipay/sdk/app/statistic/c/v Ljava/lang/String;
aastore
dup
bipush 6
aload 0
getfield com/alipay/sdk/app/statistic/c/w Ljava/lang/String;
aastore
dup
bipush 7
aload 0
getfield com/alipay/sdk/app/statistic/c/x Ljava/lang/String;
aastore
dup
bipush 8
aload 0
getfield com/alipay/sdk/app/statistic/c/y Ljava/lang/String;
aastore
dup
bipush 9
aload 0
getfield com/alipay/sdk/app/statistic/c/z Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 9
.limit stack 6
.end method

.method private static c()Ljava/lang/String;
ldc "android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-"
iconst_2
anewarray java/lang/Object
dup
iconst_0
ldc "15.0.8"
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
ldc "h.a.3.0.8"
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 5
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
aconst_null
astore 5
aconst_null
astore 3
aload 0
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 6
aload 6
ifnull L0
aload 6
arraylength
istore 2
iconst_0
istore 1
aconst_null
astore 0
L1:
aload 3
astore 5
aload 0
astore 4
iload 1
iload 2
if_icmpge L2
aload 6
iload 1
aaload
ldc "="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 7
aload 3
astore 4
aload 0
astore 5
aload 7
ifnull L3
aload 3
astore 4
aload 0
astore 5
aload 7
arraylength
iconst_2
if_icmpne L3
aload 7
iconst_0
aaload
ldc "partner"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 7
iconst_1
aaload
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
pop
aload 0
astore 5
aload 3
astore 4
L3:
iload 1
iconst_1
iadd
istore 1
aload 4
astore 3
aload 5
astore 0
goto L1
L4:
aload 7
iconst_0
aaload
ldc "out_trade_no"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
aload 7
iconst_1
aaload
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 5
aload 3
astore 4
goto L3
L5:
aload 3
astore 4
aload 0
astore 5
aload 7
iconst_0
aaload
ldc "trade_no"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 7
iconst_1
aaload
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 4
aload 0
astore 5
goto L3
L0:
aconst_null
astore 4
L2:
aload 5
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 4
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
astore 3
ldc "%s,%s,-,%s,-,-,-"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 0
aastore
dup
iconst_1
aload 3
aastore
dup
iconst_2
aload 3
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 8
.limit stack 5
.end method

.method private static d()Ljava/lang/String;
ldc "%s,%s,-,-,-"
iconst_2
anewarray java/lang/Object
dup
iconst_0
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
dup
iconst_1
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
invokevirtual com/alipay/sdk/sys/b/c()Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 5
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
ldc ""
astore 4
aload 0
getfield com/alipay/sdk/app/statistic/c/y Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "^"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%s,%s,%s,-"
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
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alipay/sdk/app/statistic/c/y Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/alipay/sdk/app/statistic/c/y Ljava/lang/String;
return
.limit locals 5
.limit stack 6
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
aload 1
aload 2
aload 3
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/Throwable;)Ljava/lang/String;
invokevirtual com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 4
.end method
