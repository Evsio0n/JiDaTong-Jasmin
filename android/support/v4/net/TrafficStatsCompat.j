.bytecode 50.0
.class public synchronized android/support/v4/net/TrafficStatsCompat
.super java/lang/Object
.inner class static synthetic inner android/support/v4/net/TrafficStatsCompat$1
.inner class static BaseTrafficStatsCompatImpl inner android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl outer android/support/v4/net/TrafficStatsCompat
.inner class inner android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1
.inner class private static SocketTags inner android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags outer android/support/v4/net/TrafficStatsCompat
.inner class static IcsTrafficStatsCompatImpl inner android/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl outer android/support/v4/net/TrafficStatsCompat
.inner class static abstract interface TrafficStatsCompatImpl inner android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl outer android/support/v4/net/TrafficStatsCompat

.field private static final 'IMPL' Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L0
new android/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl
dup
invokespecial android/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl/<init>()V
putstatic android/support/v4/net/TrafficStatsCompat/IMPL Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
return
L0:
new android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl
dup
invokespecial android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl/<init>()V
putstatic android/support/v4/net/TrafficStatsCompat/IMPL Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
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

.method public static clearThreadStatsTag()V
getstatic android/support/v4/net/TrafficStatsCompat/IMPL Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
invokeinterface android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl/clearThreadStatsTag()V 0
return
.limit locals 0
.limit stack 1
.end method

.method public static getThreadStatsTag()I
getstatic android/support/v4/net/TrafficStatsCompat/IMPL Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
invokeinterface android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl/getThreadStatsTag()I 0
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static incrementOperationCount(I)V
getstatic android/support/v4/net/TrafficStatsCompat/IMPL Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
iload 0
invokeinterface android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl/incrementOperationCount(I)V 1
return
.limit locals 1
.limit stack 2
.end method

.method public static incrementOperationCount(II)V
getstatic android/support/v4/net/TrafficStatsCompat/IMPL Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
iload 0
iload 1
invokeinterface android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl/incrementOperationCount(II)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setThreadStatsTag(I)V
getstatic android/support/v4/net/TrafficStatsCompat/IMPL Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
iload 0
invokeinterface android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl/setThreadStatsTag(I)V 1
return
.limit locals 1
.limit stack 2
.end method

.method public static tagSocket(Ljava/net/Socket;)V
.throws java/net/SocketException
getstatic android/support/v4/net/TrafficStatsCompat/IMPL Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
aload 0
invokeinterface android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl/tagSocket(Ljava/net/Socket;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method public static untagSocket(Ljava/net/Socket;)V
.throws java/net/SocketException
getstatic android/support/v4/net/TrafficStatsCompat/IMPL Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
aload 0
invokeinterface android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl/untagSocket(Ljava/net/Socket;)V 1
return
.limit locals 1
.limit stack 2
.end method
