.bytecode 50.0
.class public synchronized com/nd/android/u/business/com/ShareFileDownload
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
iload 2
putfield com/nd/android/u/business/com/ShareFileDownload/type I
aload 0
aload 1
putfield com/nd/android/u/business/com/ShareFileDownload/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
new com/nd/android/u/business/com/ProgressDownloadManager
dup
invokespecial com/nd/android/u/business/com/ProgressDownloadManager/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/business/com/ShareFileDownload/donwloadListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
invokevirtual com/nd/android/u/business/com/ProgressDownloadManager/setOnDownloadListener(Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;)V
aload 1
iload 2
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getResource(I)Ljava/lang/String; 1
astore 4
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getFile()Ljava/io/File; 0
astore 5
aload 5
ifnonnull L0
aload 1
ldc "null file"
iconst_0
iload 2
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/onFail(Ljava/lang/String;II)V 3
return
L0:
aload 3
aload 4
aload 5
invokevirtual com/nd/android/u/business/com/ProgressDownloadManager/startDownload(Ljava/lang/String;Ljava/io/File;)V
return
.limit locals 6
.limit stack 4
.end method

.method public getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
invokevirtual com/nd/android/u/controller/ChatConfiguration/getShareFileServiceUrl()Ljava/lang/String;
astore 4
iload 3
lookupswitch
2 : L0
3 : L1
80 : L1
default : L2
L2:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "getShareFileUrl unknow type:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/u/business/com/AbstractUploadDownload/getShareFileUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
areturn
L1:
ldc "%sofs/down.php?uid=%s&k=%s"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 4
aastore
dup
iconst_1
aload 2
aastore
dup
iconst_2
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
aload 4
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "ops/down.php?k="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&mUid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 5
.end method
