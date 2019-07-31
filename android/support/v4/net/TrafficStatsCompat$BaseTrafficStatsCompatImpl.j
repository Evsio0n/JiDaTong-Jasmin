.bytecode 50.0
.class synchronized android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl
.super java/lang/Object
.implements android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl
.inner class static BaseTrafficStatsCompatImpl inner android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl outer android/support/v4/net/TrafficStatsCompat
.inner class inner android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1
.inner class private static SocketTags inner android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags outer android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl

.field private 'mThreadSocketTags' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1
dup
aload 0
invokespecial android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1/<init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V
putfield android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl/mThreadSocketTags Ljava/lang/ThreadLocal;
return
.limit locals 1
.limit stack 4
.end method

.method public clearThreadStatsTag()V
aload 0
getfield android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl/mThreadSocketTags Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags
iconst_m1
putfield android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags/statsTag I
return
.limit locals 1
.limit stack 2
.end method

.method public getThreadStatsTag()I
aload 0
getfield android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl/mThreadSocketTags Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags
getfield android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags/statsTag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public incrementOperationCount(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public incrementOperationCount(II)V
return
.limit locals 3
.limit stack 0
.end method

.method public setThreadStatsTag(I)V
aload 0
getfield android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl/mThreadSocketTags Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags
iload 1
putfield android/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags/statsTag I
return
.limit locals 2
.limit stack 2
.end method

.method public tagSocket(Ljava/net/Socket;)V
return
.limit locals 2
.limit stack 0
.end method

.method public untagSocket(Ljava/net/Socket;)V
return
.limit locals 2
.limit stack 0
.end method
