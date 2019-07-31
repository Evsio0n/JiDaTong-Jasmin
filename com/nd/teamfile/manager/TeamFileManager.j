.bytecode 50.0
.class public synchronized com/nd/teamfile/manager/TeamFileManager
.super java/lang/Object

.field private static '_instance' Lcom/nd/teamfile/manager/TeamFileManager;

.field private 'mContext' Landroid/content/Context;

.field private 'mFileDb' Lcom/nd/teamfile/db/FileDb;

.field private 'teamFile' Lcom/nd/teamfile/sdk/TeamFile;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/teamfile/manager/TeamFileManager/mContext Landroid/content/Context;
aload 0
aload 1
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
putfield com/nd/teamfile/manager/TeamFileManager/mFileDb Lcom/nd/teamfile/db/FileDb;
aload 0
aload 1
invokestatic com/nd/teamfile/sdk/TeamFile/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/sdk/TeamFile;
putfield com/nd/teamfile/manager/TeamFileManager/teamFile Lcom/nd/teamfile/sdk/TeamFile;
return
.limit locals 2
.limit stack 2
.end method

.method private deleteLocalCacheFile(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/getParent()Ljava/lang/String;
new com/nd/teamfile/util/FileUtil
dup
invokespecial com/nd/teamfile/util/FileUtil/<init>()V
new com/nd/teamfile/util/AndroidFileContext
dup
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mContext Landroid/content/Context;
invokespecial com/nd/teamfile/util/AndroidFileContext/<init>(Landroid/content/Context;)V
invokevirtual com/nd/teamfile/util/FileUtil/prepareCacheDirectory(Lcom/nd/teamfile/util/AndroidFileContext;)Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 1
invokevirtual java/io/File/exists()Z
ifeq L0
aload 1
invokevirtual java/io/File/delete()Z
pop
L0:
return
.limit locals 2
.limit stack 5
.end method

.method private getFileInfoListFromServer(JI)Lcom/nd/teamfile/sdk/type/FileInfoList;
.throws org/json/JSONException
.throws com/nd/teamfile/exception/TeamFileException
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/teamFile Lcom/nd/teamfile/sdk/TeamFile;
lload 1
iload 3
invokevirtual com/nd/teamfile/sdk/TeamFile/getAllFileInfoList(JI)Lcom/nd/teamfile/sdk/type/FileInfoList;
astore 4
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mFileDb Lcom/nd/teamfile/db/FileDb;
aload 4
lload 1
invokevirtual com/nd/teamfile/db/FileDb/setFileInfoList(Lcom/nd/teamfile/sdk/type/FileInfoList;J)V
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mFileDb Lcom/nd/teamfile/db/FileDb;
lload 1
invokevirtual com/nd/teamfile/db/FileDb/getFileInfoList(J)Lcom/nd/teamfile/sdk/type/FileInfoList;
areturn
.limit locals 5
.limit stack 4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/teamfile/manager/TeamFileManager;
getstatic com/nd/teamfile/manager/TeamFileManager/_instance Lcom/nd/teamfile/manager/TeamFileManager;
ifnonnull L0
new com/nd/teamfile/manager/TeamFileManager
dup
aload 0
invokespecial com/nd/teamfile/manager/TeamFileManager/<init>(Landroid/content/Context;)V
putstatic com/nd/teamfile/manager/TeamFileManager/_instance Lcom/nd/teamfile/manager/TeamFileManager;
L0:
getstatic com/nd/teamfile/manager/TeamFileManager/_instance Lcom/nd/teamfile/manager/TeamFileManager;
areturn
.limit locals 1
.limit stack 3
.end method

.method public addUploadFileInfo2Db(Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mFileDb Lcom/nd/teamfile/db/FileDb;
aload 1
invokevirtual com/nd/teamfile/db/FileDb/addFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method public deleteFile(Lcom/nd/teamfile/sdk/type/FileInfo;)Z
.catch org/json/JSONException from L0 to L1 using L2
.catch com/nd/teamfile/exception/TeamFileException from L0 to L1 using L3
.catch org/json/JSONException from L1 to L4 using L2
.catch com/nd/teamfile/exception/TeamFileException from L1 to L4 using L3
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getId()Ljava/lang/String;
astore 3
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getLocalCachePath()Ljava/lang/String;
astore 2
L0:
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mFileDb Lcom/nd/teamfile/db/FileDb;
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
invokevirtual com/nd/teamfile/db/FileDb/deleteFile(I)V
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/teamFile Lcom/nd/teamfile/sdk/TeamFile;
aload 3
invokevirtual com/nd/teamfile/sdk/TeamFile/deleteFile(Ljava/lang/String;)V
L1:
aload 0
aload 2
invokespecial com/nd/teamfile/manager/TeamFileManager/deleteLocalCacheFile(Ljava/lang/String;)V
L4:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
L3:
astore 1
aload 0
aload 2
invokespecial com/nd/teamfile/manager/TeamFileManager/deleteLocalCacheFile(Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 4
.limit stack 2
.end method

.method public getFileInfo(Ljava/lang/String;I)Lcom/nd/teamfile/sdk/type/FileInfo;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/nd/teamfile/exception/TeamFileException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch com/nd/teamfile/exception/TeamFileException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/nd/teamfile/exception/TeamFileException from L6 to L7 using L3
.catch org/json/JSONException from L8 to L9 using L2
.catch com/nd/teamfile/exception/TeamFileException from L8 to L9 using L3
L0:
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mFileDb Lcom/nd/teamfile/db/FileDb;
aload 1
invokevirtual com/nd/teamfile/db/FileDb/getFileInfo(Ljava/lang/String;)Lcom/nd/teamfile/sdk/type/FileInfo;
ifnonnull L10
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/teamFile Lcom/nd/teamfile/sdk/TeamFile;
aload 1
iload 2
invokevirtual com/nd/teamfile/sdk/TeamFile/getFileInfo(Ljava/lang/String;I)Lcom/nd/teamfile/sdk/type/FileInfo;
astore 4
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mFileDb Lcom/nd/teamfile/db/FileDb;
aload 4
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCreaterUid()J
invokevirtual com/nd/teamfile/db/FileDb/getUser(J)Lcom/nd/teamfile/sdk/type/UserInfo;
astore 3
L1:
aload 3
astore 1
aload 3
ifnonnull L5
L4:
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/teamFile Lcom/nd/teamfile/sdk/TeamFile;
aload 4
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCreaterUid()J
invokevirtual com/nd/teamfile/sdk/TeamFile/getUserInfo(J)Lcom/nd/teamfile/sdk/type/UserInfo;
astore 1
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mFileDb Lcom/nd/teamfile/db/FileDb;
aload 1
invokevirtual com/nd/teamfile/db/FileDb/addUser(Lcom/nd/teamfile/sdk/type/UserInfo;)V
L5:
aload 1
ifnull L8
L6:
aload 4
aload 1
invokevirtual com/nd/teamfile/sdk/type/UserInfo/getName()Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateUsername(Ljava/lang/String;)V
L7:
goto L10
L8:
aload 4
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/teamfile/R$string/anonymous I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateUsername(Ljava/lang/String;)V
L9:
goto L10
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L10
L3:
astore 1
aload 1
invokevirtual com/nd/teamfile/exception/TeamFileException/printStackTrace()V
L10:
aconst_null
areturn
.limit locals 5
.limit stack 3
.end method

.method public getFileInfoList(JZI)Lcom/nd/teamfile/sdk/type/FileInfoList;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/nd/teamfile/exception/TeamFileException from L0 to L1 using L3
.catch org/json/JSONException from L1 to L4 using L2
.catch com/nd/teamfile/exception/TeamFileException from L1 to L4 using L3
.catch org/json/JSONException from L5 to L6 using L2
.catch com/nd/teamfile/exception/TeamFileException from L5 to L6 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/nd/teamfile/exception/TeamFileException from L6 to L7 using L3
iload 3
ifeq L1
L0:
aload 0
lload 1
iload 4
invokespecial com/nd/teamfile/manager/TeamFileManager/getFileInfoListFromServer(JI)Lcom/nd/teamfile/sdk/type/FileInfoList;
areturn
L1:
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/mFileDb Lcom/nd/teamfile/db/FileDb;
lload 1
invokevirtual com/nd/teamfile/db/FileDb/getFileInfoList(J)Lcom/nd/teamfile/sdk/type/FileInfoList;
astore 5
L4:
aload 5
ifnull L6
L5:
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/size()I
ifne L8
L6:
aload 0
lload 1
iload 4
invokespecial com/nd/teamfile/manager/TeamFileManager/getFileInfoListFromServer(JI)Lcom/nd/teamfile/sdk/type/FileInfoList;
astore 5
L7:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L9:
aconst_null
areturn
L3:
astore 5
aload 5
invokevirtual com/nd/teamfile/exception/TeamFileException/printStackTrace()V
goto L9
L8:
aload 5
areturn
.limit locals 6
.limit stack 4
.end method

.method public getServerCapacity(JI)Lcom/nd/teamfile/sdk/type/ServerCapacity;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/nd/teamfile/exception/TeamFileException from L0 to L1 using L3
L0:
aload 0
getfield com/nd/teamfile/manager/TeamFileManager/teamFile Lcom/nd/teamfile/sdk/TeamFile;
lload 1
iload 3
invokevirtual com/nd/teamfile/sdk/TeamFile/getServerCapacity(JI)Lcom/nd/teamfile/sdk/type/ServerCapacity;
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
L4:
aconst_null
areturn
L3:
astore 4
aload 4
invokevirtual com/nd/teamfile/exception/TeamFileException/printStackTrace()V
goto L4
.limit locals 5
.limit stack 4
.end method
