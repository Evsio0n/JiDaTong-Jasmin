.bytecode 50.0
.class public synchronized com/nd/android/u/business/com/DefaultDownloadCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IShareFileCreator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getShareFileInterface(I)Lcom/nd/android/u/controller/innerInterface/IShareFile;
new com/nd/android/u/business/com/ShareFileDownload
dup
invokespecial com/nd/android/u/business/com/ShareFileDownload/<init>()V
areturn
.limit locals 2
.limit stack 2
.end method
