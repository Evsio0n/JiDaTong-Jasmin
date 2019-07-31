.bytecode 50.0
.class public synchronized com/nd/teamfile/service/FileService$LocalBinder
.super android/os/Binder
.inner class public LocalBinder inner com/nd/teamfile/service/FileService$LocalBinder outer com/nd/teamfile/service/FileService

.field final synthetic 'this$0' Lcom/nd/teamfile/service/FileService;

.method public <init>(Lcom/nd/teamfile/service/FileService;)V
aload 0
aload 1
putfield com/nd/teamfile/service/FileService$LocalBinder/this$0 Lcom/nd/teamfile/service/FileService;
aload 0
invokespecial android/os/Binder/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getService()Lcom/nd/teamfile/service/FileService;
aload 0
getfield com/nd/teamfile/service/FileService$LocalBinder/this$0 Lcom/nd/teamfile/service/FileService;
areturn
.limit locals 1
.limit stack 1
.end method
