.bytecode 50.0
.class synchronized android/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl
.super java/lang/Object
.implements android/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl
.inner class static IcsTrafficStatsCompatImpl inner android/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl outer android/support/v4/net/TrafficStatsCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public clearThreadStatsTag()V
invokestatic android/support/v4/net/TrafficStatsCompatIcs/clearThreadStatsTag()V
return
.limit locals 1
.limit stack 0
.end method

.method public getThreadStatsTag()I
invokestatic android/support/v4/net/TrafficStatsCompatIcs/getThreadStatsTag()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public incrementOperationCount(I)V
iload 1
invokestatic android/support/v4/net/TrafficStatsCompatIcs/incrementOperationCount(I)V
return
.limit locals 2
.limit stack 1
.end method

.method public incrementOperationCount(II)V
iload 1
iload 2
invokestatic android/support/v4/net/TrafficStatsCompatIcs/incrementOperationCount(II)V
return
.limit locals 3
.limit stack 2
.end method

.method public setThreadStatsTag(I)V
iload 1
invokestatic android/support/v4/net/TrafficStatsCompatIcs/setThreadStatsTag(I)V
return
.limit locals 2
.limit stack 1
.end method

.method public tagSocket(Ljava/net/Socket;)V
.throws java/net/SocketException
aload 1
invokestatic android/support/v4/net/TrafficStatsCompatIcs/tagSocket(Ljava/net/Socket;)V
return
.limit locals 2
.limit stack 1
.end method

.method public untagSocket(Ljava/net/Socket;)V
.throws java/net/SocketException
aload 1
invokestatic android/support/v4/net/TrafficStatsCompatIcs/untagSocket(Ljava/net/Socket;)V
return
.limit locals 2
.limit stack 1
.end method
