.bytecode 50.0
.class public synchronized android/support/v4/net/TrafficStatsCompatIcs
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static clearThreadStatsTag()V
invokestatic android/net/TrafficStats/clearThreadStatsTag()V
return
.limit locals 0
.limit stack 0
.end method

.method public static getThreadStatsTag()I
invokestatic android/net/TrafficStats/getThreadStatsTag()I
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static incrementOperationCount(I)V
iload 0
invokestatic android/net/TrafficStats/incrementOperationCount(I)V
return
.limit locals 1
.limit stack 1
.end method

.method public static incrementOperationCount(II)V
iload 0
iload 1
invokestatic android/net/TrafficStats/incrementOperationCount(II)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setThreadStatsTag(I)V
iload 0
invokestatic android/net/TrafficStats/setThreadStatsTag(I)V
return
.limit locals 1
.limit stack 1
.end method

.method public static tagSocket(Ljava/net/Socket;)V
.throws java/net/SocketException
aload 0
invokestatic android/net/TrafficStats/tagSocket(Ljava/net/Socket;)V
return
.limit locals 1
.limit stack 1
.end method

.method public static untagSocket(Ljava/net/Socket;)V
.throws java/net/SocketException
aload 0
invokestatic android/net/TrafficStats/untagSocket(Ljava/net/Socket;)V
return
.limit locals 1
.limit stack 1
.end method
