.bytecode 50.0
.class public synchronized com/nd/android/u/filestoragesystem/business/ExternalInterfaceImp
.super java/lang/Object
.implements com/nd/android/u/filestoragesystem/externalInterface/IExternalInterface

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public deletePhotos(Landroid/content/Context;ILjava/lang/String;JLjava/util/ArrayList;)Z
.signature "(Landroid/content/Context;ILjava/lang/String;JLjava/util/ArrayList<Ljava/lang/Long;>;)Z"
.throws com/common/android/utils/http/HttpException
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
L0:
new com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk
dup
aload 1
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/<init>(Landroid/content/Context;)V
iload 2
aload 3
lload 4
aload 6
invokevirtual com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/deletePhotos(ILjava/lang/String;JLjava/util/ArrayList;)Z
istore 7
L1:
iload 7
ireturn
L2:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
L4:
iconst_0
ireturn
L3:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
.limit locals 8
.limit stack 6
.end method

.method public getAllMxAlbums(Landroid/content/Context;ILjava/lang/String;JI)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFolder;>;"
.throws com/common/android/utils/http/HttpException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
ldc2_w 9223372036854775807L
lstore 4
L0:
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getExternalInterface()Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
iconst_3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
ldc2_w 2L
iconst_1
lload 4
lconst_0
ldc "time"
bipush 100
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IExternalInterface/getMxAlbums(Landroid/content/Context;ILjava/lang/String;JIJJLjava/lang/String;I)Ljava/util/ArrayList; 12
astore 3
aload 3
ifnonnull L1
iconst_0
istore 2
L2:
iload 2
ifne L0
aload 1
areturn
L1:
aload 3
invokevirtual java/util/ArrayList/size()I
bipush 100
if_icmpne L3
aload 3
aload 3
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/filestoragesystem/externalInterface/IFolder
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/getCreateTime()J 0
lstore 4
iconst_1
istore 2
L4:
aload 1
aload 3
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
goto L2
L3:
iconst_0
istore 2
goto L4
.limit locals 7
.limit stack 13
.end method

.method public getFileList(Landroid/content/Context;ILjava/lang/String;JJLjava/lang/String;JJI)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JJLjava/lang/String;JJI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
L0:
new com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk
dup
aload 1
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/<init>(Landroid/content/Context;)V
iload 2
aload 3
lload 4
lload 6
aload 8
lload 9
lload 11
iload 13
invokevirtual com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/getFileList(ILjava/lang/String;JJLjava/lang/String;JJI)Ljava/util/ArrayList;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 14
.limit stack 13
.end method

.method public getMovieFileList(Landroid/content/Context;ILjava/lang/String;JJJI)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JJJI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws com/common/android/utils/http/HttpException
aload 0
aload 1
iload 2
aload 3
lload 4
lconst_0
ldc "/movie"
lload 6
lload 8
iload 10
invokevirtual com/nd/android/u/filestoragesystem/business/ExternalInterfaceImp/getFileList(Landroid/content/Context;ILjava/lang/String;JJLjava/lang/String;JJI)Ljava/util/ArrayList;
areturn
.limit locals 11
.limit stack 14
.end method

.method public getMxAlbums(Landroid/content/Context;ILjava/lang/String;JIJJLjava/lang/String;I)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JIJJLjava/lang/String;I)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFolder;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
L0:
new com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk
dup
aload 1
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/<init>(Landroid/content/Context;)V
iload 2
aload 3
lload 4
iload 6
lload 7
lload 9
aload 11
iload 12
invokevirtual com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/getMxAlbums(ILjava/lang/String;JIJJLjava/lang/String;I)Ljava/util/ArrayList;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 13
.limit stack 12
.end method

.method public getPersonalPhotoList(Landroid/content/Context;ILjava/lang/String;JJJI)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JJJI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
L0:
new com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk
dup
aload 1
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/<init>(Landroid/content/Context;)V
iload 2
aload 3
lload 4
lload 6
lload 8
iload 10
invokevirtual com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/getPersonalPhotoList(ILjava/lang/String;JJJI)Ljava/util/ArrayList;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 11
.limit stack 10
.end method

.method public upload(Landroid/content/Context;Lcom/nd/android/u/filestoragesystem/business/bean/UploadImageParams;)J
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
L0:
new com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk
dup
aload 1
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/<init>(Landroid/content/Context;)V
aload 2
invokevirtual com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/upload(Lcom/nd/android/u/filestoragesystem/business/bean/UploadImageParams;)J
lstore 3
L1:
lload 3
lreturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L4:
lconst_0
lreturn
L3:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L4
.limit locals 5
.limit stack 3
.end method
