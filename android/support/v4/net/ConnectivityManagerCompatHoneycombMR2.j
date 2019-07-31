.bytecode 50.0
.class synchronized android/support/v4/net/ConnectivityManagerCompatHoneycombMR2
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
aload 0
ifnonnull L0
L1:
iconst_1
ireturn
L0:
aload 0
invokevirtual android/net/NetworkInfo/getType()I
tableswitch 0
L1
L2
L1
L1
L1
L1
L1
L2
L3
L2
default : L3
L3:
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
