.bytecode 50.0
.class public synchronized com/nd/android/u/business4nd/ShareFileUpload_GroupFile
.super com/nd/android/u/business/com/AbstractUploadDownload
.inner class inner com/nd/android/u/business4nd/ShareFileUpload_GroupFile$1

.field private 'listener' Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/com/AbstractUploadDownload/<init>()V
aload 0
new com/nd/android/u/business4nd/ShareFileUpload_GroupFile$1
dup
aload 0
invokespecial com/nd/android/u/business4nd/ShareFileUpload_GroupFile$1/<init>(Lcom/nd/android/u/business4nd/ShareFileUpload_GroupFile;)V
putfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/listener Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/business4nd/ShareFileUpload_GroupFile;)Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private createUploadFileInfo(JJLjava/lang/String;)Lcom/nd/teamfile/sdk/type/FileInfo;
new java/io/File
dup
aload 5
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 6
aload 6
invokevirtual java/io/File/exists()Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
aload 5
invokevirtual com/nd/teamfile/db/FileDb/getFileInfoByPath(Ljava/lang/String;)Lcom/nd/teamfile/sdk/type/FileInfo;
astore 7
aload 7
ifnull L1
aload 7
iconst_0
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setDownloading(Z)V
aload 7
areturn
L1:
new com/nd/teamfile/sdk/type/FileInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileInfo/<init>()V
astore 7
aload 7
ldc ""
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setId(Ljava/lang/String;)V
aload 7
lload 3
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreaterUid(J)V
aload 7
iconst_0
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setDownloading(Z)V
aload 7
lload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setGid(J)V
aload 7
aload 5
invokestatic com/nd/teamfile/util/Util/getFilePathName(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setName(Ljava/lang/String;)V
aload 7
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setFilepath(Ljava/lang/String;)V
aload 7
aload 6
invokevirtual java/io/File/length()J
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setSize(J)V
aload 7
iconst_0
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setState(I)V
aload 7
ldc2_w 9223372036854775807L
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateTime(J)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
aload 7
invokevirtual com/nd/teamfile/db/FileDb/addFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
invokevirtual com/nd/teamfile/db/FileDb/getLastFileInfo()Lcom/nd/teamfile/sdk/type/FileInfo;
areturn
L0:
aconst_null
areturn
.limit locals 8
.limit stack 3
.end method

.method public doRequest(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V
.catch java/lang/Exception from L0 to L1 using L2
.catch com/nd/teamfile/exception/TeamFileException from L3 to L4 using L5
.catch java/lang/Exception from L3 to L4 using L6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 7
aload 0
aload 1
putfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/operation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
new java/io/File
dup
aload 1
iload 2
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getResource(I)Ljava/lang/String; 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 8
aload 8
ifnull L7
aload 8
invokevirtual java/io/File/exists()Z
ifne L8
L7:
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ldc "null file"
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
L9:
return
L8:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IShareFileDataSupplier/getTypeId()Ljava/lang/Object; 0
astore 1
L0:
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 3
L1:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lstore 5
aload 0
lload 3
lload 5
aload 8
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokespecial com/nd/android/u/business4nd/ShareFileUpload_GroupFile/createUploadFileInfo(JJLjava/lang/String;)Lcom/nd/teamfile/sdk/type/FileInfo;
astore 1
aload 1
ifnonnull L10
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "createUploadFileInfo fail:gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",filenmae="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
return
L2:
astore 1
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "invalid gid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lconst_0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
return
L10:
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getId()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getSize()J
aload 8
invokevirtual java/io/File/length()J
lcmp
ifne L3
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getFilepath()Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onSuccess(Ljava/lang/String;)V 1
return
L3:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 3
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getShareFileCategory(J)I 2
istore 2
aload 7
invokestatic com/nd/teamfile/sdk/TeamFile/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/sdk/TeamFile;
lload 3
aload 8
iload 2
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/listener Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
invokevirtual com/nd/teamfile/sdk/TeamFile/uploadFile(JLjava/io/File;ILcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;)Ljava/lang/String;
astore 9
aload 7
invokestatic com/nd/teamfile/sdk/TeamFile/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/sdk/TeamFile;
aload 9
iload 2
invokevirtual com/nd/teamfile/sdk/TeamFile/getFileInfo(Ljava/lang/String;I)Lcom/nd/teamfile/sdk/type/FileInfo;
astore 10
new java/io/File
dup
new com/nd/teamfile/util/FileUtil
dup
invokespecial com/nd/teamfile/util/FileUtil/<init>()V
new com/nd/teamfile/util/AndroidFileContext
dup
aload 7
invokespecial com/nd/teamfile/util/AndroidFileContext/<init>(Landroid/content/Context;)V
invokevirtual com/nd/teamfile/util/FileUtil/prepareCacheDirectory(Lcom/nd/teamfile/util/AndroidFileContext;)Ljava/io/File;
aload 8
invokevirtual java/io/File/getName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 11
new com/nd/teamfile/util/FileUtil
dup
invokespecial com/nd/teamfile/util/FileUtil/<init>()V
aload 8
aload 11
invokevirtual com/nd/teamfile/util/FileUtil/copy(Ljava/io/File;Ljava/io/File;)V
aload 10
lload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreaterUid(J)V
aload 10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUserName()Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateUsername(Ljava/lang/String;)V
aload 10
iconst_1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setState(I)V
aload 10
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateTime(J)V
aload 10
aload 11
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setLocalCachePath(Ljava/lang/String;)V
aload 10
aload 9
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setId(Ljava/lang/String;)V
aload 7
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
aload 10
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
invokevirtual com/nd/teamfile/db/FileDb/updateFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;I)I
pop
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 9
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onSuccess(Ljava/lang/String;)V 1
L4:
return
L5:
astore 8
aload 8
invokevirtual com/nd/teamfile/exception/TeamFileException/getCode()I
sipush 409
if_icmpne L11
aload 7
getstatic com/nd/android/u/chat/R$string/chat_groupshare_name_conflict I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 8
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 8
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
L12:
aload 7
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
invokevirtual com/nd/teamfile/db/FileDb/deleteFile(I)V
return
L11:
aload 8
ifnull L12
aload 8
invokevirtual com/nd/teamfile/exception/TeamFileException/printStackTrace()V
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 8
invokevirtual com/nd/teamfile/exception/TeamFileException/getMessage()Ljava/lang/String;
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
goto L12
L6:
astore 1
aload 1
ifnull L9
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
getfield com/nd/android/u/business4nd/ShareFileUpload_GroupFile/uploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
return
.limit locals 12
.limit stack 6
.end method
