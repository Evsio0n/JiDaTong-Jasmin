.bytecode 50.0
.class public final synchronized com/alipay/sdk/util/a
.super java/lang/Object

.field private static final 'a' Ljava/lang/String; = "00:00:00:00:00:00"

.field private static 'e' Lcom/alipay/sdk/util/a;

.field private 'b' Ljava/lang/String;

.field private 'c' Ljava/lang/String;

.field private 'd' Ljava/lang/String;

.method static <clinit>()V
aconst_null
putstatic com/alipay/sdk/util/a/e Lcom/alipay/sdk/util/a;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L5 to L6 using L2
.catch all from L5 to L6 using L3
.catch all from L7 to L8 using L3
aload 0
invokespecial java/lang/Object/<init>()V
L0:
aload 1
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
astore 2
aload 0
aload 2
invokevirtual android/telephony/TelephonyManager/getDeviceId()Ljava/lang/String;
invokespecial com/alipay/sdk/util/a/b(Ljava/lang/String;)V
aload 2
invokevirtual android/telephony/TelephonyManager/getSubscriberId()Ljava/lang/String;
astore 3
L1:
aload 3
astore 2
aload 3
ifnull L5
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "000000000000000"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
bipush 15
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L5:
aload 0
aload 2
putfield com/alipay/sdk/util/a/b Ljava/lang/String;
aload 0
aload 1
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
invokevirtual android/net/wifi/WifiInfo/getMacAddress()Ljava/lang/String;
putfield com/alipay/sdk/util/a/d Ljava/lang/String;
L6:
aload 0
getfield com/alipay/sdk/util/a/d Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
aload 0
ldc "00:00:00:00:00:00"
putfield com/alipay/sdk/util/a/d Ljava/lang/String;
L9:
return
L2:
astore 1
L7:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L8:
aload 0
getfield com/alipay/sdk/util/a/d Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
aload 0
ldc "00:00:00:00:00:00"
putfield com/alipay/sdk/util/a/d Ljava/lang/String;
return
L3:
astore 1
aload 0
getfield com/alipay/sdk/util/a/d Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L10
aload 0
ldc "00:00:00:00:00:00"
putfield com/alipay/sdk/util/a/d Ljava/lang/String;
L10:
aload 1
athrow
.limit locals 4
.limit stack 3
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
getstatic com/alipay/sdk/util/a/e Lcom/alipay/sdk/util/a;
ifnonnull L0
new com/alipay/sdk/util/a
dup
aload 0
invokespecial com/alipay/sdk/util/a/<init>(Landroid/content/Context;)V
putstatic com/alipay/sdk/util/a/e Lcom/alipay/sdk/util/a;
L0:
getstatic com/alipay/sdk/util/a/e Lcom/alipay/sdk/util/a;
areturn
.limit locals 1
.limit stack 3
.end method

.method private a(Ljava/lang/String;)V
aload 1
astore 2
aload 1
ifnull L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "000000000000000"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
bipush 15
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L0:
aload 0
aload 2
putfield com/alipay/sdk/util/a/b Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public static b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L2
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 0
L0:
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
L1:
aload 0
ifnull L4
L3:
aload 0
invokevirtual android/net/NetworkInfo/getType()I
ifne L4
aload 0
invokevirtual android/net/NetworkInfo/getSubtype()I
invokestatic com/alipay/sdk/util/d/a(I)Lcom/alipay/sdk/util/d;
areturn
L4:
aload 0
ifnull L6
L5:
aload 0
invokevirtual android/net/NetworkInfo/getType()I
iconst_1
if_icmpne L6
getstatic com/alipay/sdk/util/d/a Lcom/alipay/sdk/util/d;
areturn
L6:
getstatic com/alipay/sdk/util/d/o Lcom/alipay/sdk/util/d;
astore 0
L7:
aload 0
areturn
L2:
astore 0
getstatic com/alipay/sdk/util/d/o Lcom/alipay/sdk/util/d;
areturn
.limit locals 1
.limit stack 2
.end method

.method private b(Ljava/lang/String;)V
aload 1
astore 3
aload 1
ifnull L0
aload 1
invokevirtual java/lang/String/getBytes()[B
astore 1
iconst_0
istore 2
L1:
iload 2
aload 1
arraylength
if_icmpge L2
aload 1
iload 2
baload
bipush 48
if_icmplt L3
aload 1
iload 2
baload
bipush 57
if_icmple L4
L3:
aload 1
iload 2
bipush 48
bastore
L4:
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
new java/lang/String
dup
aload 1
invokespecial java/lang/String/<init>([B)V
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "000000000000000"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
bipush 15
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
L0:
aload 0
aload 3
putfield com/alipay/sdk/util/a/c Ljava/lang/String;
return
.limit locals 4
.limit stack 3
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
astore 0
aload 0
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
astore 0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "000000000000000"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L1:
aload 0
iconst_0
bipush 8
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
goto L1
.limit locals 2
.limit stack 3
.end method

.method private d()Ljava/lang/String;
aload 0
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "000000000000000"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
ifnonnull L0
ldc ""
areturn
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/locale Ljava/util/Locale;
invokevirtual java/util/Locale/toString()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public final a()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/util/a/b Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc "000000000000000"
putfield com/alipay/sdk/util/a/b Ljava/lang/String;
L0:
aload 0
getfield com/alipay/sdk/util/a/b Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public final b()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/util/a/c Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc "000000000000000"
putfield com/alipay/sdk/util/a/c Ljava/lang/String;
L0:
aload 0
getfield com/alipay/sdk/util/a/c Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public final c()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/util/a/d Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
