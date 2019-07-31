.bytecode 50.0
.class public final synchronized com/nd/schoollife/ui/common/util/TeamUtils
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "TeamUtils"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getDefaultAvatarPath(Landroid/content/Context;)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
new java/io/File
dup
aload 0
invokevirtual android/content/Context/getFilesDir()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
ldc "default_community_header.png"
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L1
L0:
aload 0
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
ldc "img/default_community_header.png"
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 0
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
aload 0
invokestatic com/nd/schoollife/common/utils/common/FileUtil/decodeInputStreamAsBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
bipush 100
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 2
invokevirtual java/io/OutputStream/flush()V
aload 2
invokevirtual java/io/OutputStream/close()V
aload 0
invokevirtual java/io/InputStream/close()V
L1:
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
areturn
L2:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 4
.end method

.method public static getTeamAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
aload 0
sipush 160
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getTeamAvatarUrl(Ljava/lang/String;I)Ljava/lang/String;
.catch java/lang/NumberFormatException from L0 to L1 using L2
lconst_0
lstore 2
L0:
aload 0
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
L1:
lload 4
lstore 2
L3:
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
lload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
iload 1
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getDownUrlByFid(JLjava/lang/String;I)Ljava/lang/String;
areturn
L2:
astore 0
ldc "TeamUtils"
aload 0
invokevirtual java/lang/NumberFormatException/getMessage()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L3
.limit locals 6
.limit stack 5
.end method

.method public static uploadCreateTeamAvatar(Landroid/content/Context;Ljava/lang/String;)J
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new com/nd/android/u/filestoragesystem/business/bean/UploadImageParams
dup
invokespecial com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/<init>()V
astore 4
aload 4
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/local_path Ljava/lang/String;
aload 4
iconst_3
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/type I
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/sid Ljava/lang/String;
aload 4
ldc2_w 77L
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/id J
aload 4
ldc "/0"
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/path Ljava/lang/String;
L0:
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getExternalInterface()Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;
aload 0
aload 4
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IExternalInterface/upload(Landroid/content/Context;Lcom/nd/android/u/filestoragesystem/business/bean/UploadImageParams;)J 2
lstore 2
L1:
lload 2
lreturn
L2:
astore 0
ldc "TeamUtils"
aload 0
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
lconst_0
lreturn
.limit locals 5
.limit stack 3
.end method

.method public static uploadModifyTeamAvatar(Landroid/content/Context;JLjava/lang/String;)J
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new com/nd/android/u/filestoragesystem/business/bean/UploadImageParams
dup
invokespecial com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/<init>()V
astore 4
aload 4
aload 3
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/local_path Ljava/lang/String;
aload 4
iconst_3
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/type I
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/sid Ljava/lang/String;
aload 4
ldc2_w 77L
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/id J
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/path Ljava/lang/String;
L0:
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getExternalInterface()Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;
aload 0
aload 4
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IExternalInterface/upload(Landroid/content/Context;Lcom/nd/android/u/filestoragesystem/business/bean/UploadImageParams;)J 2
lstore 1
L1:
lload 1
lreturn
L2:
astore 0
ldc "TeamUtils"
aload 0
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
lconst_0
lreturn
.limit locals 5
.limit stack 4
.end method
