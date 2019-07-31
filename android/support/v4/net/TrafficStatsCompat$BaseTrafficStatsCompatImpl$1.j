.bytecode 50.0
.class synchronized android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1
.super java/lang/ThreadLocal
.signature "Ljava/lang/ThreadLocal<Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;>;"
.enclosing method android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl
.inner class static BaseTrafficStatsCompatImpl inner android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl outer android/support/v4/net/TrafficStatsCompat
.inner class inner android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1

.field final synthetic 'this$0' Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

.method <init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V
aload 0
aload 1
putfield android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1/this$0 Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
aload 0
invokespecial java/lang/ThreadLocal/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
new android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags
dup
aconst_null
invokespecial android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags/<init>(Landroid/support/v4/net/TrafficStatsCompat$1;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method protected volatile synthetic initialValue()Ljava/lang/Object;
aload 0
invokevirtual android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1/initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
areturn
.limit locals 1
.limit stack 1
.end method
