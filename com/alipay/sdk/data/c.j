.bytecode 50.0
.class public final synchronized com/alipay/sdk/data/c
.super java/lang/Object

.field private static final 'd' Ljava/lang/String; = "virtualImeiAndImsi"

.field private static final 'e' Ljava/lang/String; = "virtual_imei"

.field private static final 'f' Ljava/lang/String; = "virtual_imsi"

.field private static 'g' Lcom/alipay/sdk/data/c;

.field public 'a' Ljava/lang/String;

.field public 'b' Ljava/lang/String;

.field public 'c' Ljava/lang/String;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "sdk-and-lite"
putfield com/alipay/sdk/data/c/b Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public static a()Lcom/alipay/sdk/data/c;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/alipay/sdk/data/c
monitorenter
L0:
getstatic com/alipay/sdk/data/c/g Lcom/alipay/sdk/data/c;
ifnonnull L1
new com/alipay/sdk/data/c
dup
invokespecial com/alipay/sdk/data/c/<init>()V
putstatic com/alipay/sdk/data/c/g Lcom/alipay/sdk/data/c;
L1:
getstatic com/alipay/sdk/data/c/g Lcom/alipay/sdk/data/c;
astore 0
L3:
ldc com/alipay/sdk/data/c
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/alipay/sdk/data/c
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
new android/widget/TextView
dup
aload 0
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
invokevirtual android/widget/TextView/getTextSize()F
invokestatic java/lang/Float/toString(F)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
.signature "(Landroid/content/Context;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
.catch java/lang/Throwable from L0 to L1 using L2
ldc ""
astore 2
L0:
aload 0
aload 1
invokestatic com/alipay/mobilesecuritysdk/face/a/a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
astore 0
L1:
new java/lang/StringBuilder
dup
ldc "apdid:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
aload 0
areturn
L2:
astore 0
aload 2
astore 0
goto L1
.limit locals 3
.limit stack 3
.end method

.method private a(Lcom/alipay/sdk/tid/b;)Ljava/lang/String;
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 7
aload 7
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
astore 6
aload 0
getfield com/alipay/sdk/data/c/a Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
invokestatic com/alipay/sdk/util/i/a()Ljava/lang/String;
astore 3
invokestatic com/alipay/sdk/util/i/b()Ljava/lang/String;
astore 4
aload 7
invokestatic com/alipay/sdk/util/i/d(Landroid/content/Context;)Ljava/lang/String;
astore 5
getstatic com/alipay/sdk/cons/a/a Ljava/lang/String;
astore 8
aload 8
iconst_0
aload 8
ldc "://"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 8
aload 7
invokestatic com/alipay/sdk/util/i/e(Landroid/content/Context;)Ljava/lang/String;
astore 9
new android/widget/TextView
dup
aload 7
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
invokevirtual android/widget/TextView/getTextSize()F
invokestatic java/lang/Float/toString(F)Ljava/lang/String;
astore 10
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Msp/15.0.8"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/alipay/sdk/data/c/a Ljava/lang/String;
L0:
aload 7
invokestatic com/alipay/sdk/util/a/b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;
invokevirtual com/alipay/sdk/util/d/a()Ljava/lang/String;
astore 8
aload 6
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
astore 9
aload 6
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
astore 10
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 11
aload 11
ldc "virtualImeiAndImsi"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 5
aload 5
ldc "virtual_imsi"
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 3
aload 3
astore 4
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
invokevirtual com/alipay/sdk/sys/b/c()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
invokestatic com/alipay/sdk/data/c/b()Ljava/lang/String;
astore 3
L4:
aload 5
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "virtual_imsi"
aload 3
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
aload 3
astore 4
L1:
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 12
aload 12
ldc "virtualImeiAndImsi"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 11
aload 11
ldc "virtual_imei"
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 5
aload 5
astore 3
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
invokestatic com/alipay/sdk/data/c/b()Ljava/lang/String;
astore 3
L7:
aload 11
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "virtual_imei"
aload 3
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L5:
aload 1
ifnull L8
aload 0
aload 1
getfield com/alipay/sdk/tid/b/b Ljava/lang/String;
putfield com/alipay/sdk/data/c/c Ljava/lang/String;
L8:
getstatic android/os/Build/MANUFACTURER Ljava/lang/String;
ldc ";"
ldc " "
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 11
getstatic android/os/Build/MODEL Ljava/lang/String;
ldc ";"
ldc " "
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 12
invokestatic com/alipay/sdk/sys/b/b()Z
istore 2
aload 6
invokevirtual com/alipay/sdk/util/a/c()Ljava/lang/String;
astore 13
aload 7
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 5
aload 5
ifnull L9
aload 5
invokevirtual android/net/wifi/WifiInfo/getSSID()Ljava/lang/String;
astore 5
L10:
aload 7
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 6
aload 6
ifnull L11
aload 6
invokevirtual android/net/wifi/WifiInfo/getBSSID()Ljava/lang/String;
astore 6
L12:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 14
aload 14
aload 0
getfield com/alipay/sdk/data/c/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-1;-1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alipay/sdk/data/c/c Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 13
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";-1;-1;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alipay/sdk/data/c/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ifnull L13
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 3
aload 3
ldc "tid"
aload 1
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "utdid"
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
invokevirtual com/alipay/sdk/sys/b/c()Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 7
aload 3
invokestatic com/alipay/sdk/data/c/a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L13
aload 14
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L13:
aload 14
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 14
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
aload 3
iconst_3
bipush 18
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
goto L4
L2:
aload 11
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
astore 3
goto L4
L6:
aload 12
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
astore 3
goto L7
L9:
ldc "-1"
astore 5
goto L10
L11:
ldc "00"
astore 6
goto L12
.limit locals 15
.limit stack 4
.end method

.method public static b()Ljava/lang/String;
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/toHexString(J)Ljava/lang/String;
astore 0
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
sipush 9000
invokevirtual java/util/Random/nextInt(I)I
sipush 1000
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
aload 0
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 0
aload 0
ifnull L0
aload 0
invokevirtual android/net/wifi/WifiInfo/getSSID()Ljava/lang/String;
areturn
L0:
ldc "-1"
areturn
.limit locals 1
.limit stack 2
.end method

.method private c()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/data/c/c Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
aload 0
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 0
aload 0
ifnull L0
aload 0
invokevirtual android/net/wifi/WifiInfo/getBSSID()Ljava/lang/String;
areturn
L0:
ldc "00"
areturn
.limit locals 1
.limit stack 2
.end method

.method private static d()Ljava/lang/String;
ldc "1"
areturn
.limit locals 0
.limit stack 1
.end method

.method private static e()Ljava/lang/String;
ldc "-1;-1"
areturn
.limit locals 0
.limit stack 1
.end method

.method private static f()Ljava/lang/String;
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 3
aload 3
ldc "virtualImeiAndImsi"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 2
aload 2
ldc "virtual_imei"
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 1
aload 1
astore 0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
invokestatic com/alipay/sdk/data/c/b()Ljava/lang/String;
astore 0
L2:
aload 2
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "virtual_imei"
aload 0
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L0:
aload 0
areturn
L1:
aload 3
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
astore 0
goto L2
.limit locals 4
.limit stack 3
.end method

.method private static g()Ljava/lang/String;
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 3
aload 3
ldc "virtualImeiAndImsi"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 2
aload 2
ldc "virtual_imsi"
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 1
aload 1
astore 0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
invokevirtual com/alipay/sdk/sys/b/c()Ljava/lang/String;
astore 0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
invokestatic com/alipay/sdk/data/c/b()Ljava/lang/String;
astore 0
L3:
aload 2
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "virtual_imsi"
aload 0
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L0:
aload 0
areturn
L2:
aload 0
iconst_3
bipush 18
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
goto L3
L1:
aload 3
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
astore 0
goto L3
.limit locals 4
.limit stack 3
.end method

.method public final a(Ljava/lang/String;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
istore 2
L1:
iload 2
ifeq L3
L5:
aload 0
monitorexit
return
L3:
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "trideskey"
aload 1
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
aload 1
putstatic com/alipay/sdk/cons/a/b Ljava/lang/String;
L4:
goto L5
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 3
.limit stack 3
.end method
