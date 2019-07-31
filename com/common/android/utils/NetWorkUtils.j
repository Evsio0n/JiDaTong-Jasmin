.bytecode 50.0
.class public synchronized com/common/android/utils/NetWorkUtils
.super java/lang/Object

.field private static final 'CMCC' I = 1


.field private static final 'CTCC' I = 3


.field private static final 'CUCC' I = 2


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static JudgeNetWorkStatus(Landroid/content/Context;)Z
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
aload 0
ifnull L1
aload 0
invokevirtual android/net/NetworkInfo/isAvailable()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getAPNType(Landroid/content/Context;)I
iconst_m1
istore 2
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
aload 0
ifnonnull L0
iconst_m1
ireturn
L0:
iload 2
istore 1
aload 0
invokevirtual android/net/NetworkInfo/getType()I
ifne L1
aload 0
invokevirtual android/net/NetworkInfo/getExtraInfo()Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
astore 0
aload 0
ldc "cmnet"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
aload 0
ldc "cmwap"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
L2:
iconst_1
istore 1
L1:
iload 1
ireturn
L3:
aload 0
ldc "3gwap"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
ldc "3gnet"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
ldc "uniwap"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 0
ldc "uninet"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
L4:
iconst_2
istore 1
goto L1
L5:
aload 0
ldc "ctwap"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
iload 2
istore 1
aload 0
ldc "ctnet"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L6:
iconst_3
istore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public static isWifi()Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
invokevirtual android/net/NetworkInfo/getType()I
iconst_1
if_icmpne L1
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method
