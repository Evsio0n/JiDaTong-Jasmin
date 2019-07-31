.bytecode 50.0
.class public synchronized com/nd/rj/common/serverinterfaces/OriginalHttpResponse
.super java/lang/Object

.field private final 'mResponseContent' Ljava/lang/String;

.field private final 'mStatusCode' I

.method public <init>(ILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/rj/common/serverinterfaces/OriginalHttpResponse/mStatusCode I
aload 2
ifnonnull L0
aload 0
ldc ""
putfield com/nd/rj/common/serverinterfaces/OriginalHttpResponse/mResponseContent Ljava/lang/String;
return
L0:
aload 0
aload 2
putfield com/nd/rj/common/serverinterfaces/OriginalHttpResponse/mResponseContent Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public getResponseContent()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/serverinterfaces/OriginalHttpResponse/mResponseContent Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStatusCode()I
aload 0
getfield com/nd/rj/common/serverinterfaces/OriginalHttpResponse/mStatusCode I
ireturn
.limit locals 1
.limit stack 1
.end method
