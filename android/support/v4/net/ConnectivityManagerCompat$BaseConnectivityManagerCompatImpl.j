.bytecode 50.0
.class synchronized android/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl
.super java/lang/Object
.implements android/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl
.inner class static BaseConnectivityManagerCompatImpl inner android/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl outer android/support/v4/net/ConnectivityManagerCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
aload 1
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
aload 1
ifnonnull L0
L1:
iconst_1
ireturn
L0:
aload 1
invokevirtual android/net/NetworkInfo/getType()I
tableswitch 0
L1
L2
default : L3
L3:
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method
