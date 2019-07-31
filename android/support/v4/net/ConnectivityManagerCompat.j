.bytecode 50.0
.class public synchronized android/support/v4/net/ConnectivityManagerCompat
.super java/lang/Object
.inner class static BaseConnectivityManagerCompatImpl inner android/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl outer android/support/v4/net/ConnectivityManagerCompat
.inner class static abstract interface ConnectivityManagerCompatImpl inner android/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl outer android/support/v4/net/ConnectivityManagerCompat
.inner class static GingerbreadConnectivityManagerCompatImpl inner android/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl outer android/support/v4/net/ConnectivityManagerCompat
.inner class static HoneycombMR2ConnectivityManagerCompatImpl inner android/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl outer android/support/v4/net/ConnectivityManagerCompat
.inner class static JellyBeanConnectivityManagerCompatImpl inner android/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl outer android/support/v4/net/ConnectivityManagerCompat

.field private static final 'IMPL' Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmplt L0
new android/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl
dup
invokespecial android/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl/<init>()V
putstatic android/support/v4/net/ConnectivityManagerCompat/IMPL Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;
return
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 13
if_icmplt L1
new android/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl
dup
invokespecial android/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl/<init>()V
putstatic android/support/v4/net/ConnectivityManagerCompat/IMPL Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;
return
L1:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 8
if_icmplt L2
new android/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl
dup
invokespecial android/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl/<init>()V
putstatic android/support/v4/net/ConnectivityManagerCompat/IMPL Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;
return
L2:
new android/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl
dup
invokespecial android/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl/<init>()V
putstatic android/support/v4/net/ConnectivityManagerCompat/IMPL Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
aload 0
aload 1
ldc "networkInfo"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/net/NetworkInfo
invokevirtual android/net/NetworkInfo/getType()I
invokevirtual android/net/ConnectivityManager/getNetworkInfo(I)Landroid/net/NetworkInfo;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
getstatic android/support/v4/net/ConnectivityManagerCompat/IMPL Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;
aload 0
invokeinterface android/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl/isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method
