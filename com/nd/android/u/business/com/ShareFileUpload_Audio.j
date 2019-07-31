.bytecode 50.0
.class public synchronized com/nd/android/u/business/com/ShareFileUpload_Audio
.super com/nd/android/u/business/com/AbstractUploadDownload

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/com/AbstractUploadDownload/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private doTransKey(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V
aload 1
iload 2
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getResource(I)Ljava/lang/String; 1
astore 1
new com/nd/android/u/business/com/AudioCom
dup
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getSid(Z)Ljava/lang/String; 1
invokespecial com/nd/android/u/business/com/AudioCom/<init>(Ljava/lang/String;)V
astore 3
aload 3
aload 0
getfield com/nd/android/u/business/com/ShareFileUpload_Audio/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
invokevirtual com/nd/android/u/business/com/AudioCom/setOnUploadListener(Lcom/nd/android/u/controller/innerInterface/IUploadListener;)V
aload 3
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokevirtual com/nd/android/u/business/com/AudioCom/transmitFile(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
pop
return
.limit locals 4
.limit stack 4
.end method

.method private doUpload(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getSid(Z)Ljava/lang/String; 1
astore 3
new com/nd/android/u/business/com/AudioCom
dup
aload 3
invokespecial com/nd/android/u/business/com/AudioCom/<init>(Ljava/lang/String;)V
astore 4
aload 4
aload 0
getfield com/nd/android/u/business/com/ShareFileUpload_Audio/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
invokevirtual com/nd/android/u/business/com/AudioCom/setOnUploadListener(Lcom/nd/android/u/controller/innerInterface/IUploadListener;)V
new com/nd/android/u/business/com/AudioCom$UploadEntity
dup
invokespecial com/nd/android/u/business/com/AudioCom$UploadEntity/<init>()V
astore 5
aload 5
aload 3
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/uapSid Ljava/lang/String;
aload 5
new java/io/File
dup
aload 1
iload 2
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getResource(I)Ljava/lang/String; 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/file Ljava/io/File;
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/errMsg Ljava/lang/StringBuilder;
aload 4
aload 5
invokevirtual com/nd/android/u/business/com/AudioCom/doUpload(Lcom/nd/android/u/business/com/AudioCom$UploadEntity;)Z
pop
return
.limit locals 6
.limit stack 5
.end method

.method public doRequest(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V
aload 0
aload 1
putfield com/nd/android/u/business/com/ShareFileUpload_Audio/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
aload 0
iload 2
putfield com/nd/android/u/business/com/ShareFileUpload_Audio/type I
iload 2
tableswitch 0
L0
L1
L2
default : L1
L1:
return
L0:
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/business/com/ShareFileUpload_Audio/doUpload(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V
return
L2:
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/business/com/ShareFileUpload_Audio/doTransKey(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V
return
.limit locals 3
.limit stack 3
.end method
