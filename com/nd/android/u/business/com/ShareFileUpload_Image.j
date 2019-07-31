.bytecode 50.0
.class public synchronized com/nd/android/u/business/com/ShareFileUpload_Image
.super com/nd/android/u/business/com/AbstractUploadDownload

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/com/AbstractUploadDownload/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doRequest(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V
aload 0
aload 1
putfield com/nd/android/u/business/com/ShareFileUpload_Image/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
new com/nd/android/u/business/com/ImageCom
dup
invokespecial com/nd/android/u/business/com/ImageCom/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/business/com/ShareFileUpload_Image/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
invokevirtual com/nd/android/u/business/com/ImageCom/setOnUploadListener(Lcom/nd/android/u/controller/innerInterface/IUploadListener;)V
aload 3
new java/io/File
dup
aload 1
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getResource(I)Ljava/lang/String; 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual com/nd/android/u/business/com/ImageCom/postImageToShareFileService(Ljava/io/File;)V
return
.limit locals 4
.limit stack 5
.end method
