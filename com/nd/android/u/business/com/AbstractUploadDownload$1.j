.bytecode 50.0
.class synchronized com/nd/android/u/business/com/AbstractUploadDownload$1
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IUploadListener
.enclosing method com/nd/android/u/business/com/AbstractUploadDownload
.inner class inner com/nd/android/u/business/com/AbstractUploadDownload$1

.field final synthetic 'this$0' Lcom/nd/android/u/business/com/AbstractUploadDownload;

.method <init>(Lcom/nd/android/u/business/com/AbstractUploadDownload;)V
aload 0
aload 1
putfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onFail(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
getfield com/nd/android/u/business/com/AbstractUploadDownload/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
ifnull L0
aload 0
getfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
getfield com/nd/android/u/business/com/AbstractUploadDownload/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
aload 1
iload 2
aload 0
getfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
getfield com/nd/android/u/business/com/AbstractUploadDownload/type I
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/onFail(Ljava/lang/String;II)V 3
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public onProgressed(JJ)V
aload 0
getfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
getfield com/nd/android/u/business/com/AbstractUploadDownload/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
ifnull L0
aload 0
getfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
getfield com/nd/android/u/business/com/AbstractUploadDownload/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
lload 1
lload 3
aload 0
getfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
getfield com/nd/android/u/business/com/AbstractUploadDownload/type I
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/onProgressed(JJI)V 5
L0:
return
.limit locals 5
.limit stack 6
.end method

.method public onSuccess(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
getfield com/nd/android/u/business/com/AbstractUploadDownload/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
ifnull L0
aload 0
getfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
getfield com/nd/android/u/business/com/AbstractUploadDownload/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
aload 1
aload 0
getfield com/nd/android/u/business/com/AbstractUploadDownload$1/this$0 Lcom/nd/android/u/business/com/AbstractUploadDownload;
getfield com/nd/android/u/business/com/AbstractUploadDownload/type I
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/onSuccess(Ljava/lang/String;I)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method
