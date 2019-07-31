.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/TeamFile
.super java/lang/Object
.inner class public static UploadEntity inner com/nd/teamfile/sdk/TeamFile$UploadEntity outer com/nd/teamfile/sdk/TeamFile

.field private static '_instance' Lcom/nd/teamfile/sdk/TeamFile;

.field private 'mContext' Landroid/content/Context;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/teamfile/sdk/TeamFile;
getstatic com/nd/teamfile/sdk/TeamFile/_instance Lcom/nd/teamfile/sdk/TeamFile;
ifnonnull L0
new com/nd/teamfile/sdk/TeamFile
dup
aload 0
invokespecial com/nd/teamfile/sdk/TeamFile/<init>(Landroid/content/Context;)V
putstatic com/nd/teamfile/sdk/TeamFile/_instance Lcom/nd/teamfile/sdk/TeamFile;
L0:
getstatic com/nd/teamfile/sdk/TeamFile/_instance Lcom/nd/teamfile/sdk/TeamFile;
areturn
.limit locals 1
.limit stack 3
.end method

.method private sort(Lcom/nd/teamfile/sdk/type/FileInfoList;)Lcom/nd/teamfile/sdk/type/FileInfoList;
new com/nd/teamfile/sdk/type/FileInfoList
dup
invokespecial com/nd/teamfile/sdk/type/FileInfoList/<init>()V
astore 3
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/size()I
iconst_1
isub
istore 2
L0:
iload 2
iflt L1
aload 3
aload 1
iload 2
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/get(I)Ljava/lang/Object;
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
isub
istore 2
goto L0
L1:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public changeUserId(J)V
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/passport/changeuser"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 3
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "unitid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 3
aload 4
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Lorg/json/JSONObject;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public deleteFile(Ljava/lang/String;)V
.throws org/json/JSONException
.throws com/nd/teamfile/exception/TeamFileException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/remove"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "fid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 4
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
aload 3
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Lorg/json/JSONObject;)I
istore 2
aload 1
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 2
sipush 200
if_icmpeq L0
iload 2
sipush 201
if_icmpne L1
L0:
return
L1:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 1
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 1
aload 1
iload 2
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
new com/nd/teamfile/exception/TeamFileException
dup
iload 2
aload 1
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public downloadFile(JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/down?gid=%d&fid=%s&category=%d"
iconst_3
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
aload 3
aastore
dup
iconst_2
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new java/io/File
dup
new com/nd/teamfile/util/FileUtil
dup
invokespecial com/nd/teamfile/util/FileUtil/<init>()V
new com/nd/teamfile/util/AndroidFileContext
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
invokespecial com/nd/teamfile/util/AndroidFileContext/<init>(Landroid/content/Context;)V
invokevirtual com/nd/teamfile/util/FileUtil/prepareCacheDirectory(Lcom/nd/teamfile/util/AndroidFileContext;)Ljava/io/File;
aload 4
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 4
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 3
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
aload 4
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/downloadFile(Ljava/io/File;)I
istore 5
iload 5
sipush 200
if_icmpeq L0
iload 5
sipush 201
if_icmpne L1
L0:
aload 4
invokevirtual java/io/File/getPath()Ljava/lang/String;
areturn
L1:
aconst_null
areturn
.limit locals 6
.limit stack 7
.end method

.method public downloadFile(JLjava/lang/String;Ljava/lang/String;ILcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/down?gid=%d&fid=%s&category=%d"
iconst_3
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
aload 3
aastore
dup
iconst_2
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new com/nd/teamfile/util/FileUtil
dup
invokespecial com/nd/teamfile/util/FileUtil/<init>()V
new com/nd/teamfile/util/AndroidFileContext
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
invokespecial com/nd/teamfile/util/AndroidFileContext/<init>(Landroid/content/Context;)V
invokevirtual com/nd/teamfile/util/FileUtil/prepareCacheDirectory(Lcom/nd/teamfile/util/AndroidFileContext;)Ljava/io/File;
astore 7
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 3
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 6
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/downloadFile(Ljava/lang/String;Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;)V
return
.limit locals 8
.limit stack 7
.end method

.method public getAllFileInfoList(JI)Lcom/nd/teamfile/sdk/type/FileInfoList;
.throws org/json/JSONException
.throws com/nd/teamfile/exception/TeamFileException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/list?gid=%d&category=%d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 5
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 5
aload 5
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doGet()I
istore 3
aload 5
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 5
iload 3
sipush 200
if_icmpeq L0
iload 3
sipush 201
if_icmpne L1
L0:
new com/nd/teamfile/sdk/parser/json/FileInfoListParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/FileInfoListParser/<init>()V
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/FileInfoListParser/parseServerData(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/FileInfoList;
astore 5
new com/nd/teamfile/util/FileUtil
dup
invokespecial com/nd/teamfile/util/FileUtil/<init>()V
new com/nd/teamfile/util/AndroidFileContext
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
invokespecial com/nd/teamfile/util/AndroidFileContext/<init>(Landroid/content/Context;)V
invokevirtual com/nd/teamfile/util/FileUtil/prepareCacheDirectory(Lcom/nd/teamfile/util/AndroidFileContext;)Ljava/io/File;
astore 6
aload 6
invokevirtual java/io/File/list()[Ljava/lang/String;
astore 7
aload 7
arraylength
istore 4
iconst_0
istore 3
L2:
iload 3
iload 4
if_icmpge L3
aload 7
iload 3
aaload
astore 8
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/iterator()Ljava/util/Iterator;
astore 9
L4:
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 10
aload 10
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getName()Ljava/lang/String;
aload 8
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setLocalCachePath(Ljava/lang/String;)V
goto L4
L5:
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 0
aload 5
invokespecial com/nd/teamfile/sdk/TeamFile/sort(Lcom/nd/teamfile/sdk/type/FileInfoList;)Lcom/nd/teamfile/sdk/type/FileInfoList;
areturn
L1:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 5
aload 5
iload 3
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
new com/nd/teamfile/exception/TeamFileException
dup
iload 3
aload 5
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
.limit locals 11
.limit stack 7
.end method

.method public getFileInfo(Ljava/lang/String;I)Lcom/nd/teamfile/sdk/type/FileInfo;
.throws org/json/JSONException
.throws com/nd/teamfile/exception/TeamFileException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/query?fid=%s&category=%d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 1
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doGet()I
istore 2
aload 1
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 2
sipush 200
if_icmpeq L0
iload 2
sipush 201
if_icmpne L1
L0:
new com/nd/teamfile/sdk/parser/json/FileInfoParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/FileInfoParser/<init>()V
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "finfo"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/nd/teamfile/sdk/parser/json/FileInfoParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/FileInfo;
areturn
L1:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 1
aload 1
iload 2
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
new com/nd/teamfile/exception/TeamFileException
dup
iload 2
aload 1
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
.limit locals 3
.limit stack 6
.end method

.method public getFileInfoList(JIII)Lcom/nd/teamfile/sdk/type/FileInfoList;
.throws org/json/JSONException
.throws com/nd/teamfile/exception/TeamFileException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/list?gid=%d&offset=%d&limit=%d&category=%d"
iconst_4
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_3
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 6
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 6
aload 6
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doGet()I
istore 3
aload 6
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 6
iload 3
sipush 200
if_icmpeq L0
iload 3
sipush 201
if_icmpne L1
L0:
new com/nd/teamfile/sdk/parser/json/FileInfoListParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/FileInfoListParser/<init>()V
new org/json/JSONArray
dup
aload 6
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/FileInfoListParser/parse(Lorg/json/JSONArray;)Lcom/nd/teamfile/sdk/type/FileInfoList;
areturn
L1:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 6
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 6
aload 6
iload 3
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
new com/nd/teamfile/exception/TeamFileException
dup
iload 3
aload 6
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
.limit locals 7
.limit stack 7
.end method

.method public getServerCapacity(JI)Lcom/nd/teamfile/sdk/type/ServerCapacity;
.throws org/json/JSONException
.throws com/nd/teamfile/exception/TeamFileException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/info?gid=%d&category=%d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 4
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 4
aload 4
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doGet()I
istore 3
aload 4
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 4
iload 3
sipush 200
if_icmpeq L0
iload 3
sipush 201
if_icmpne L1
L0:
new com/nd/teamfile/sdk/parser/json/CapacityParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/CapacityParser/<init>()V
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/CapacityParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ServerCapacity;
areturn
L1:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 4
aload 4
iload 3
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
new com/nd/teamfile/exception/TeamFileException
dup
iload 3
aload 4
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
.limit locals 5
.limit stack 7
.end method

.method public getUserInfo(J)Lcom/nd/teamfile/sdk/type/UserInfo;
.throws org/json/JSONException
.throws com/nd/teamfile/exception/TeamFileException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user/info?uid=%d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 4
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 4
aload 4
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doGet()I
istore 3
aload 4
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 4
iload 3
sipush 200
if_icmpeq L0
iload 3
sipush 201
if_icmpne L1
L0:
new com/nd/teamfile/sdk/parser/json/UserParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/UserParser/<init>()V
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/UserParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/UserInfo;
areturn
L1:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 4
aload 4
iload 3
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
new com/nd/teamfile/exception/TeamFileException
dup
iload 3
aload 4
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
.limit locals 5
.limit stack 7
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;)V
.throws org/json/JSONException
.throws com/nd/teamfile/exception/TeamFileException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/rename"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "fid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "name"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 5
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
aload 4
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Lorg/json/JSONObject;)I
istore 3
aload 1
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 3
sipush 200
if_icmpeq L0
iload 3
sipush 201
if_icmpne L1
L0:
return
L1:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 1
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 1
aload 1
iload 3
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
new com/nd/teamfile/exception/TeamFileException
dup
iload 3
aload 1
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
.limit locals 6
.limit stack 4
.end method

.method public uploadFile(JLjava/io/File;I)Ljava/lang/String;
.throws java/io/UnsupportedEncodingException
.throws com/nd/teamfile/exception/TeamFileException
.throws org/json/JSONException
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/IOException from L5 to L6 using L7
.catch java/lang/Exception from L5 to L6 using L8
.catch all from L5 to L6 using L9
.catch java/io/IOException from L6 to L10 using L7
.catch java/lang/Exception from L6 to L10 using L8
.catch all from L6 to L10 using L9
.catch java/io/IOException from L11 to L12 using L13
.catch java/io/IOException from L14 to L15 using L7
.catch java/lang/Exception from L14 to L15 using L8
.catch all from L14 to L15 using L9
.catch java/io/IOException from L16 to L17 using L18
.catch java/lang/Exception from L16 to L17 using L19
.catch all from L16 to L17 using L20
.catch java/io/IOException from L21 to L22 using L18
.catch java/lang/Exception from L21 to L22 using L19
.catch all from L21 to L22 using L20
.catch java/io/IOException from L23 to L24 using L18
.catch java/lang/Exception from L23 to L24 using L19
.catch all from L23 to L24 using L20
.catch java/io/IOException from L25 to L26 using L18
.catch java/lang/Exception from L25 to L26 using L19
.catch all from L25 to L26 using L20
.catch java/io/IOException from L27 to L28 using L18
.catch java/lang/Exception from L27 to L28 using L19
.catch all from L27 to L28 using L20
.catch java/io/IOException from L29 to L30 using L18
.catch java/lang/Exception from L29 to L30 using L19
.catch all from L29 to L30 using L20
.catch java/io/IOException from L31 to L32 using L18
.catch java/lang/Exception from L31 to L32 using L19
.catch all from L31 to L32 using L20
.catch java/io/IOException from L33 to L34 using L18
.catch java/lang/Exception from L33 to L34 using L19
.catch all from L33 to L34 using L20
.catch java/io/IOException from L35 to L36 using L18
.catch java/lang/Exception from L35 to L36 using L19
.catch all from L35 to L36 using L20
.catch java/io/IOException from L37 to L38 using L18
.catch java/lang/Exception from L37 to L38 using L19
.catch all from L37 to L38 using L20
.catch java/io/IOException from L39 to L40 using L18
.catch java/lang/Exception from L39 to L40 using L19
.catch all from L39 to L40 using L20
.catch java/io/IOException from L41 to L42 using L18
.catch java/lang/Exception from L41 to L42 using L19
.catch all from L41 to L42 using L20
.catch java/io/IOException from L43 to L44 using L18
.catch java/lang/Exception from L43 to L44 using L19
.catch all from L43 to L44 using L20
.catch java/io/IOException from L45 to L46 using L18
.catch java/lang/Exception from L45 to L46 using L19
.catch all from L45 to L46 using L20
.catch all from L47 to L48 using L4
.catch java/io/IOException from L49 to L50 using L51
.catch java/io/IOException from L52 to L53 using L18
.catch java/lang/Exception from L52 to L53 using L19
.catch all from L52 to L53 using L20
.catch java/io/IOException from L54 to L55 using L18
.catch java/lang/Exception from L54 to L55 using L19
.catch all from L54 to L55 using L20
.catch java/io/IOException from L56 to L57 using L18
.catch java/lang/Exception from L56 to L57 using L19
.catch all from L56 to L57 using L20
.catch java/io/IOException from L58 to L59 using L18
.catch java/lang/Exception from L58 to L59 using L19
.catch all from L58 to L59 using L20
.catch java/io/IOException from L60 to L61 using L18
.catch java/lang/Exception from L60 to L61 using L19
.catch all from L60 to L61 using L20
.catch java/io/IOException from L61 to L62 using L63
.catch java/lang/Exception from L61 to L62 using L64
.catch all from L61 to L62 using L65
.catch java/io/IOException from L66 to L67 using L63
.catch java/lang/Exception from L66 to L67 using L64
.catch all from L66 to L67 using L65
.catch java/io/IOException from L68 to L69 using L63
.catch java/lang/Exception from L68 to L69 using L64
.catch all from L68 to L69 using L65
.catch java/io/IOException from L70 to L71 using L63
.catch java/lang/Exception from L70 to L71 using L64
.catch all from L70 to L71 using L65
.catch java/io/IOException from L72 to L73 using L63
.catch java/lang/Exception from L72 to L73 using L64
.catch all from L72 to L73 using L65
.catch java/io/IOException from L74 to L63 using L63
.catch java/lang/Exception from L74 to L63 using L64
.catch all from L74 to L63 using L65
.catch java/io/IOException from L75 to L76 using L18
.catch java/lang/Exception from L75 to L76 using L19
.catch all from L75 to L76 using L20
.catch java/io/IOException from L77 to L78 using L18
.catch java/lang/Exception from L77 to L78 using L19
.catch all from L77 to L78 using L20
.catch java/io/IOException from L79 to L19 using L18
.catch java/lang/Exception from L79 to L19 using L19
.catch all from L79 to L19 using L20
.catch all from L80 to L4 using L4
.catch java/io/IOException from L81 to L82 using L83
aload 3
ifnull L84
aload 3
invokevirtual java/io/File/exists()Z
ifne L85
L84:
new com/nd/teamfile/exception/TeamFileException
dup
iconst_0
ldc "file not exists"
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
L85:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/upload?gid=%d&category=%d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
aconst_null
astore 11
aconst_null
astore 9
aconst_null
astore 10
new com/nd/teamfile/sdk/TeamFile$UploadEntity
dup
invokespecial com/nd/teamfile/sdk/TeamFile$UploadEntity/<init>()V
astore 13
aload 13
aload 3
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/file Ljava/io/File;
aload 13
aload 3
invokevirtual java/io/File/length()J
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
aload 13
aload 3
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/md5Sum(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/md5 Ljava/lang/String;
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
i2l
lcmp
ifge L86
aload 13
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
l2i
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
L86:
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 8
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 14
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
newarray byte
astore 12
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
astore 15
iconst_m1
istore 5
L0:
new java/io/FileInputStream
dup
aload 3
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 8
L1:
aconst_null
astore 10
aload 12
astore 9
L5:
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
lsub
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
i2l
lcmp
ifge L6
aload 13
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
lsub
l2i
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
newarray byte
astore 9
L6:
aload 8
aload 9
iconst_0
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
invokevirtual java/io/InputStream/read([BII)I
istore 7
L10:
iconst_m1
iload 7
if_icmpne L14
L87:
aload 8
ifnull L12
L11:
aload 8
invokevirtual java/io/InputStream/close()V
L12:
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/fkey Ljava/lang/String;
areturn
L14:
new org/apache/http/entity/mime/MultipartEntity
dup
getstatic org/apache/http/entity/mime/HttpMultipartMode/BROWSER_COMPATIBLE Lorg/apache/http/entity/mime/HttpMultipartMode;
aconst_null
aload 15
invokespecial org/apache/http/entity/mime/MultipartEntity/<init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
astore 10
L15:
iload 5
istore 6
L16:
aload 10
ldc "totalsize"
new org/apache/http/entity/mime/content/StringBody
dup
aload 3
invokevirtual java/io/File/length()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L17:
iload 5
istore 6
L21:
aload 10
ldc "pos"
new org/apache/http/entity/mime/content/StringBody
dup
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L22:
iload 5
istore 6
L23:
aload 10
ldc "size"
new org/apache/http/entity/mime/content/StringBody
dup
iload 7
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L24:
iload 5
istore 6
L25:
aload 10
ldc "upfile"
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 9
ldc "application/octet-stream"
aload 3
invokevirtual java/io/File/getName()Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L26:
iload 5
istore 6
L27:
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
lconst_0
lcmp
ifne L88
L28:
iload 5
istore 6
L29:
aload 10
ldc "md5"
new org/apache/http/entity/mime/content/StringBody
dup
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/md5 Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L30:
iload 5
istore 6
L31:
aload 10
ldc "filename"
new org/apache/http/entity/mime/content/StringBody
dup
aload 3
invokevirtual java/io/File/getName()Ljava/lang/String;
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L32:
iload 5
istore 6
L33:
aload 14
aload 10
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Lorg/apache/http/HttpEntity;)I
istore 5
L34:
iload 5
istore 6
L35:
aload 14
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 11
L36:
iload 5
sipush 200
if_icmpeq L89
iload 5
sipush 201
if_icmpne L90
L89:
iload 5
istore 6
L37:
new org/json/JSONObject
dup
aload 11
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 11
L38:
iload 5
istore 6
L39:
aload 13
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
iload 7
i2l
ladd
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
L40:
iload 5
istore 6
L41:
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
lcmp
ifeq L91
L42:
iload 5
istore 6
L43:
aload 13
aload 11
ldc "fkey"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/fkey Ljava/lang/String;
L44:
goto L5
L88:
iload 5
istore 6
L45:
aload 10
ldc "fkey"
new org/apache/http/entity/mime/content/StringBody
dup
aload 13
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/fkey Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L46:
goto L32
L18:
astore 9
aload 8
astore 3
aload 9
astore 8
L92:
aload 3
astore 9
L47:
aload 8
invokevirtual java/io/IOException/printStackTrace()V
L48:
aload 3
ifnull L12
L49:
aload 3
invokevirtual java/io/InputStream/close()V
L50:
goto L12
L51:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L12
L91:
iload 5
istore 6
L52:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L53:
iload 5
istore 6
L54:
aload 3
ldc "fkey"
aload 11
ldc "fkey"
invokevirtual org/json/JSONObject/get(Ljava/lang/String;)Ljava/lang/Object;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L55:
iload 5
istore 6
L56:
aload 3
ldc "gid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L57:
iload 5
istore 6
L58:
aload 3
ldc "category"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L59:
iload 5
istore 6
L60:
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/uploade"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 9
L61:
aload 9
aload 3
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Lorg/json/JSONObject;)I
istore 4
L62:
iload 4
istore 5
L66:
aload 9
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 3
L67:
iload 4
sipush 200
if_icmpne L93
iload 4
istore 5
L68:
aload 13
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "fkey"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/fkey Ljava/lang/String;
L69:
goto L87
L93:
iload 4
istore 5
L70:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 3
L71:
iload 4
istore 5
L72:
aload 3
iload 4
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
L73:
iload 4
istore 5
L74:
new com/nd/teamfile/exception/TeamFileException
dup
iload 4
aload 3
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
L63:
astore 9
aload 8
astore 3
aload 9
astore 8
goto L92
L90:
iload 5
istore 6
L75:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 11
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 3
L76:
iload 5
istore 6
L77:
aload 3
iload 5
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
L78:
iload 5
istore 6
L79:
new com/nd/teamfile/exception/TeamFileException
dup
iload 5
aload 3
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
L19:
astore 9
aload 8
astore 3
iload 6
istore 5
aload 9
astore 8
L94:
aload 3
astore 9
L80:
new com/nd/teamfile/exception/TeamFileException
dup
iload 5
aload 8
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
L4:
astore 3
L95:
aload 9
ifnull L82
L81:
aload 9
invokevirtual java/io/InputStream/close()V
L82:
aload 3
athrow
L13:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L12
L83:
astore 8
aload 8
invokevirtual java/io/IOException/printStackTrace()V
goto L82
L9:
astore 3
aload 8
astore 9
goto L95
L20:
astore 3
aload 8
astore 9
goto L95
L65:
astore 3
aload 8
astore 9
goto L95
L3:
astore 8
aload 11
astore 3
goto L94
L8:
astore 9
aload 8
astore 3
aload 9
astore 8
goto L94
L64:
astore 9
aload 8
astore 3
aload 9
astore 8
goto L94
L2:
astore 8
aload 10
astore 3
goto L92
L7:
astore 9
aload 8
astore 3
aload 9
astore 8
goto L92
.limit locals 16
.limit stack 7
.end method

.method public uploadFile(JLjava/io/File;ILcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;)Ljava/lang/String;
.throws java/io/UnsupportedEncodingException
.throws com/nd/teamfile/exception/TeamFileException
.throws org/json/JSONException
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/IOException from L5 to L6 using L7
.catch java/lang/Exception from L5 to L6 using L8
.catch all from L5 to L6 using L9
.catch java/io/IOException from L6 to L10 using L7
.catch java/lang/Exception from L6 to L10 using L8
.catch all from L6 to L10 using L9
.catch java/io/IOException from L11 to L12 using L13
.catch java/io/IOException from L14 to L15 using L7
.catch java/lang/Exception from L14 to L15 using L8
.catch all from L14 to L15 using L9
.catch java/io/IOException from L16 to L17 using L18
.catch java/lang/Exception from L16 to L17 using L19
.catch all from L16 to L17 using L20
.catch java/io/IOException from L21 to L22 using L18
.catch java/lang/Exception from L21 to L22 using L19
.catch all from L21 to L22 using L20
.catch java/io/IOException from L23 to L24 using L18
.catch java/lang/Exception from L23 to L24 using L19
.catch all from L23 to L24 using L20
.catch java/io/IOException from L25 to L26 using L18
.catch java/lang/Exception from L25 to L26 using L19
.catch all from L25 to L26 using L20
.catch java/io/IOException from L27 to L28 using L18
.catch java/lang/Exception from L27 to L28 using L19
.catch all from L27 to L28 using L20
.catch java/io/IOException from L29 to L30 using L18
.catch java/lang/Exception from L29 to L30 using L19
.catch all from L29 to L30 using L20
.catch java/io/IOException from L31 to L32 using L18
.catch java/lang/Exception from L31 to L32 using L19
.catch all from L31 to L32 using L20
.catch java/io/IOException from L33 to L34 using L18
.catch java/lang/Exception from L33 to L34 using L19
.catch all from L33 to L34 using L20
.catch java/io/IOException from L35 to L36 using L18
.catch java/lang/Exception from L35 to L36 using L19
.catch all from L35 to L36 using L20
.catch java/io/IOException from L37 to L38 using L18
.catch java/lang/Exception from L37 to L38 using L19
.catch all from L37 to L38 using L20
.catch java/io/IOException from L39 to L40 using L18
.catch java/lang/Exception from L39 to L40 using L19
.catch all from L39 to L40 using L20
.catch java/io/IOException from L41 to L42 using L18
.catch java/lang/Exception from L41 to L42 using L19
.catch all from L41 to L42 using L20
.catch java/io/IOException from L43 to L44 using L18
.catch java/lang/Exception from L43 to L44 using L19
.catch all from L43 to L44 using L20
.catch java/io/IOException from L45 to L46 using L18
.catch java/lang/Exception from L45 to L46 using L19
.catch all from L45 to L46 using L20
.catch java/io/IOException from L47 to L48 using L18
.catch java/lang/Exception from L47 to L48 using L19
.catch all from L47 to L48 using L20
.catch all from L49 to L50 using L4
.catch java/io/IOException from L51 to L52 using L53
.catch java/io/IOException from L54 to L55 using L18
.catch java/lang/Exception from L54 to L55 using L19
.catch all from L54 to L55 using L20
.catch java/io/IOException from L56 to L57 using L18
.catch java/lang/Exception from L56 to L57 using L19
.catch all from L56 to L57 using L20
.catch java/io/IOException from L58 to L59 using L18
.catch java/lang/Exception from L58 to L59 using L19
.catch all from L58 to L59 using L20
.catch java/io/IOException from L60 to L61 using L18
.catch java/lang/Exception from L60 to L61 using L19
.catch all from L60 to L61 using L20
.catch java/io/IOException from L62 to L63 using L18
.catch java/lang/Exception from L62 to L63 using L19
.catch all from L62 to L63 using L20
.catch java/io/IOException from L63 to L64 using L65
.catch java/lang/Exception from L63 to L64 using L66
.catch all from L63 to L64 using L67
.catch java/io/IOException from L68 to L69 using L65
.catch java/lang/Exception from L68 to L69 using L66
.catch all from L68 to L69 using L67
.catch java/io/IOException from L70 to L71 using L65
.catch java/lang/Exception from L70 to L71 using L66
.catch all from L70 to L71 using L67
.catch java/io/IOException from L72 to L73 using L65
.catch java/lang/Exception from L72 to L73 using L66
.catch all from L72 to L73 using L67
.catch java/io/IOException from L74 to L75 using L65
.catch java/lang/Exception from L74 to L75 using L66
.catch all from L74 to L75 using L67
.catch java/io/IOException from L76 to L65 using L65
.catch java/lang/Exception from L76 to L65 using L66
.catch all from L76 to L65 using L67
.catch java/io/IOException from L77 to L78 using L18
.catch java/lang/Exception from L77 to L78 using L19
.catch all from L77 to L78 using L20
.catch java/io/IOException from L79 to L80 using L18
.catch java/lang/Exception from L79 to L80 using L19
.catch all from L79 to L80 using L20
.catch java/io/IOException from L81 to L19 using L18
.catch java/lang/Exception from L81 to L19 using L19
.catch all from L81 to L19 using L20
.catch all from L82 to L4 using L4
.catch java/io/IOException from L83 to L84 using L85
aload 3
ifnull L86
aload 3
invokevirtual java/io/File/exists()Z
ifne L87
L86:
new com/nd/teamfile/exception/TeamFileException
dup
iconst_0
ldc "file not exists"
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
L87:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/upload?gid=%d&category=%d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
aconst_null
astore 12
aconst_null
astore 10
aconst_null
astore 11
new com/nd/teamfile/sdk/TeamFile$UploadEntity
dup
invokespecial com/nd/teamfile/sdk/TeamFile$UploadEntity/<init>()V
astore 14
aload 14
aload 3
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/file Ljava/io/File;
aload 14
aload 3
invokevirtual java/io/File/length()J
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
aload 14
aload 3
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/md5Sum(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/md5 Ljava/lang/String;
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
i2l
lcmp
ifge L88
aload 14
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
l2i
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
L88:
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
aload 9
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 15
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
newarray byte
astore 13
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
astore 16
iconst_m1
istore 6
L0:
new java/io/FileInputStream
dup
aload 3
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 9
L1:
aconst_null
astore 11
aload 13
astore 10
L5:
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
lsub
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
i2l
lcmp
ifge L6
aload 14
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
lsub
l2i
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
newarray byte
astore 10
L6:
aload 9
aload 10
iconst_0
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
invokevirtual java/io/InputStream/read([BII)I
istore 8
L10:
iconst_m1
iload 8
if_icmpne L14
L89:
aload 9
ifnull L12
L11:
aload 9
invokevirtual java/io/InputStream/close()V
L12:
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/fkey Ljava/lang/String;
areturn
L14:
new org/apache/http/entity/mime/MultipartEntity
dup
getstatic org/apache/http/entity/mime/HttpMultipartMode/BROWSER_COMPATIBLE Lorg/apache/http/entity/mime/HttpMultipartMode;
aconst_null
aload 16
invokespecial org/apache/http/entity/mime/MultipartEntity/<init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
astore 11
L15:
iload 6
istore 7
L16:
aload 11
ldc "totalsize"
new org/apache/http/entity/mime/content/StringBody
dup
aload 3
invokevirtual java/io/File/length()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L17:
iload 6
istore 7
L21:
aload 11
ldc "pos"
new org/apache/http/entity/mime/content/StringBody
dup
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L22:
iload 6
istore 7
L23:
aload 11
ldc "size"
new org/apache/http/entity/mime/content/StringBody
dup
iload 8
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L24:
iload 6
istore 7
L25:
aload 11
ldc "upfile"
new org/apache/http/entity/mime/content/ByteArrayBody
dup
aload 10
ldc "application/octet-stream"
aload 3
invokevirtual java/io/File/getName()Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/ByteArrayBody/<init>([BLjava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L26:
iload 6
istore 7
L27:
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
lconst_0
lcmp
ifne L90
L28:
iload 6
istore 7
L29:
aload 11
ldc "md5"
new org/apache/http/entity/mime/content/StringBody
dup
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/md5 Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L30:
iload 6
istore 7
L31:
aload 11
ldc "filename"
new org/apache/http/entity/mime/content/StringBody
dup
aload 3
invokevirtual java/io/File/getName()Ljava/lang/String;
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L32:
iload 6
istore 7
L33:
aload 15
aload 11
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Lorg/apache/http/HttpEntity;)I
istore 6
L34:
iload 6
istore 7
L35:
aload 15
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 12
L36:
iload 6
sipush 200
if_icmpeq L91
iload 6
sipush 201
if_icmpne L92
L91:
iload 6
istore 7
L37:
new org/json/JSONObject
dup
aload 12
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 12
L38:
iload 6
istore 7
L39:
aload 14
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
iload 8
i2l
ladd
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
L40:
aload 5
ifnull L42
iload 6
istore 7
L41:
aload 5
ldc ""
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
ldc2_w 100L
lmul
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
ldiv
l2i
invokeinterface com/nd/teamfile/service/FileService$IUploadProgressUpdateListener/onProgressUpdate(Ljava/lang/String;I)V 2
L42:
iload 6
istore 7
L43:
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/totalsize J
lcmp
ifeq L93
L44:
iload 6
istore 7
L45:
aload 14
aload 12
ldc "fkey"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/fkey Ljava/lang/String;
L46:
goto L5
L90:
iload 6
istore 7
L47:
aload 11
ldc "fkey"
new org/apache/http/entity/mime/content/StringBody
dup
aload 14
getfield com/nd/teamfile/sdk/TeamFile$UploadEntity/fkey Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L48:
goto L32
L18:
astore 5
aload 9
astore 3
L94:
aload 3
astore 10
L49:
aload 5
invokevirtual java/io/IOException/printStackTrace()V
L50:
aload 3
ifnull L12
L51:
aload 3
invokevirtual java/io/InputStream/close()V
L52:
goto L12
L53:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L12
L93:
iload 6
istore 7
L54:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L55:
iload 6
istore 7
L56:
aload 3
ldc "fkey"
aload 12
ldc "fkey"
invokevirtual org/json/JSONObject/get(Ljava/lang/String;)Ljava/lang/Object;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L57:
iload 6
istore 7
L58:
aload 3
ldc "gid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L59:
iload 6
istore 7
L60:
aload 3
ldc "category"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L61:
iload 6
istore 7
L62:
new com/nd/teamfile/sdk/TeamHttpToolkit
dup
aload 0
getfield com/nd/teamfile/sdk/TeamFile/mContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gshare/uploade"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/teamfile/sdk/TeamHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 5
L63:
aload 5
aload 3
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Lorg/json/JSONObject;)I
istore 4
L64:
iload 4
istore 6
L68:
aload 5
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/getResponse()Ljava/lang/String;
astore 3
L69:
iload 4
sipush 200
if_icmpne L95
iload 4
istore 6
L70:
aload 14
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "fkey"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/fkey Ljava/lang/String;
L71:
goto L89
L95:
iload 4
istore 6
L72:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 3
L73:
iload 4
istore 6
L74:
aload 3
iload 4
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
L75:
iload 4
istore 6
L76:
new com/nd/teamfile/exception/TeamFileException
dup
iload 4
aload 3
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
L65:
astore 5
aload 9
astore 3
goto L94
L92:
iload 6
istore 7
L77:
new com/nd/teamfile/sdk/parser/json/ErrMsgParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/ErrMsgParser/<init>()V
new org/json/JSONObject
dup
aload 12
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
astore 3
L78:
iload 6
istore 7
L79:
aload 3
iload 6
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setCode(I)V
L80:
iload 6
istore 7
L81:
new com/nd/teamfile/exception/TeamFileException
dup
iload 6
aload 3
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/getMsg()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
L19:
astore 5
aload 9
astore 3
iload 7
istore 6
L96:
aload 3
astore 10
L82:
new com/nd/teamfile/exception/TeamFileException
dup
iload 6
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(ILjava/lang/String;)V
athrow
L4:
astore 3
L97:
aload 10
ifnull L84
L83:
aload 10
invokevirtual java/io/InputStream/close()V
L84:
aload 3
athrow
L13:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L12
L85:
astore 5
aload 5
invokevirtual java/io/IOException/printStackTrace()V
goto L84
L9:
astore 3
aload 9
astore 10
goto L97
L20:
astore 3
aload 9
astore 10
goto L97
L67:
astore 3
aload 9
astore 10
goto L97
L3:
astore 5
aload 12
astore 3
goto L96
L8:
astore 5
aload 9
astore 3
goto L96
L66:
astore 5
aload 9
astore 3
goto L96
L2:
astore 5
aload 11
astore 3
goto L94
L7:
astore 5
aload 9
astore 3
goto L94
.limit locals 17
.limit stack 7
.end method
