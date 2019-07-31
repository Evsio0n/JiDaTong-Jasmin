.bytecode 50.0
.class public synchronized abstract com/nd/android/u/business/com/AbstractUploadDownload
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IShareFile
.inner class inner com/nd/android/u/business/com/AbstractUploadDownload$1
.inner class inner com/nd/android/u/business/com/AbstractUploadDownload$2

.field protected 'donwloadListener' Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;

.field protected 'operation' Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;

.field protected 'type' I

.field protected 'uploadListener' Lcom/nd/android/u/controller/innerInterface/IUploadListener;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/u/business/com/AbstractUploadDownload$1
dup
aload 0
invokespecial com/nd/android/u/business/com/AbstractUploadDownload$1/<init>(Lcom/nd/android/u/business/com/AbstractUploadDownload;)V
putfield com/nd/android/u/business/com/AbstractUploadDownload/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 0
new com/nd/android/u/business/com/AbstractUploadDownload$2
dup
aload 0
invokespecial com/nd/android/u/business/com/AbstractUploadDownload$2/<init>(Lcom/nd/android/u/business/com/AbstractUploadDownload;)V
putfield com/nd/android/u/business/com/AbstractUploadDownload/donwloadListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
return
.limit locals 1
.limit stack 4
.end method

.method public getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
aconst_null
areturn
.limit locals 4
.limit stack 1
.end method
