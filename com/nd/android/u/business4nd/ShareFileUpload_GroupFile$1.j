.bytecode 50.0
.class synchronized com/nd/android/u/business4nd/ShareFileUpload_GroupFile$1
.super java/lang/Object
.implements com/nd/teamfile/service/FileService$IUploadProgressUpdateListener
.enclosing method com/nd/android/u/business4nd/ShareFileUpload_GroupFile
.inner class inner com/nd/android/u/business4nd/ShareFileUpload_GroupFile$1

.field final synthetic 'this$0' Lcom/nd/android/u/business4nd/ShareFileUpload_GroupFile;

.method <init>(Lcom/nd/android/u/business4nd/ShareFileUpload_GroupFile;)V
aload 0
aload 1
putfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile$1/this$0 Lcom/nd/android/u/business4nd/ShareFileUpload_GroupFile;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public AllFinish()V
return
.limit locals 1
.limit stack 0
.end method

.method public onError(Lcom/nd/teamfile/sdk/type/FileInfo;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onFinish(Lcom/nd/teamfile/sdk/type/FileInfo;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onProgressUpdate(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile$1/this$0 Lcom/nd/android/u/business4nd/ShareFileUpload_GroupFile;
invokestatic com/nd/android/u/business4nd/ShareFileUpload_GroupFile/access$000(Lcom/nd/android/u/business4nd/ShareFileUpload_GroupFile;)Lcom/nd/android/u/controller/innerInterface/IUploadListener;
iload 2
i2l
ldc2_w 100L
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onProgressed(JJ)V 4
return
.limit locals 3
.limit stack 5
.end method
