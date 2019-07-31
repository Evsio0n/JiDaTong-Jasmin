.bytecode 50.0
.class public synchronized com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk
.super java/lang/Object

.field public static final 'LIST_URL_FILE' Ljava/lang/String;

.field public static final 'LIST_URL_FLOLDER' Ljava/lang/String;

.field public static final 'PAGE_SIZE' I = 20


.field public static final 'UPLOAD_URL' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.method static <clinit>()V
new java/lang/StringBuilder
dup
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getBaseUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "files"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/UPLOAD_URL Ljava/lang/String;
new java/lang/StringBuilder
dup
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getBaseUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "folders/list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/LIST_URL_FLOLDER Ljava/lang/String;
new java/lang/StringBuilder
dup
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getBaseUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "files/list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/LIST_URL_FILE Ljava/lang/String;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private getFileList(Lorg/json/JSONObject;)Ljava/util/ArrayList;
.signature "(Lorg/json/JSONObject;)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
getstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/INSTANCE Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
invokevirtual com/nd/android/u/filestoragesystem/business/FileSystemUtil/getMiddleRequest()Lcom/common/android/utils/httpRequest/IHttpRequest;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 3
getstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/INSTANCE Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
getstatic com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/LIST_URL_FILE Ljava/lang/String;
invokevirtual com/nd/android/u/filestoragesystem/business/FileSystemUtil/getMiddleUrl(Ljava/lang/String;)Ljava/lang/String;
aload 1
aload 4
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 2
iload 2
sipush 200
if_icmpne L0
new org/json/JSONObject
dup
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "code"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L1
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L1
aconst_null
areturn
L1:
aload 1
ldc "data"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
ifnonnull L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L2:
aload 0
aload 1
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/parseFileInfoList(Lorg/json/JSONObject;)Ljava/util/ArrayList;
areturn
L0:
iload 2
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/HttpErrMsgUtils/parseHttpErrMsg(ILjava/lang/String;)V
aconst_null
areturn
.limit locals 5
.limit stack 4
.end method

.method private getFileStorageRequest(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 1
getstatic com/product/android/business/config/Configuration/OAP_APPID I
iconst_1
invokestatic com/common/android/utils/httpRequest/AutoLoginHttpRequest/getInstance(Landroid/content/Context;II)Lcom/common/android/utils/httpRequest/IHttpRequest;
astore 1
aload 1
new com/nd/android/u/filestoragesystem/business/com/FileStorageRequestHeader
dup
invokespecial com/nd/android/u/filestoragesystem/business/com/FileStorageRequestHeader/<init>()V
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/setAgent(Lcom/common/android/utils/httpRequest/ISetHeadAgent;)V 1
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method private parseFileInfoList(Lorg/json/JSONObject;)Ljava/util/ArrayList;
.signature "(Lorg/json/JSONObject;)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
ldc "data"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 5
ifnonnull L0
aconst_null
astore 1
L1:
aload 1
areturn
L0:
aload 1
ldc "resc"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "oid"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 6
aload 5
invokevirtual org/json/JSONArray/length()I
istore 3
iconst_0
istore 2
L2:
aload 4
astore 1
iload 2
iload 3
if_icmpge L1
getstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/INSTANCE Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
aload 5
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/filestoragesystem/business/FileSystemUtil/parseFileInfo(Lorg/json/JSONObject;)Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;
astore 1
aload 6
ifnull L3
aload 1
getstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/INSTANCE Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
aload 1
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/getFid()J 0
aload 6
invokevirtual com/nd/android/u/filestoragesystem/business/FileSystemUtil/parseInterActionAttr(JLorg/json/JSONObject;)Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setInterActionAttr(Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;)V 1
L3:
aload 4
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 7
.limit stack 5
.end method

.method private parseFolderInfoList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
.signature "(Lorg/json/JSONArray;)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFolder;>;"
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmplt L1
aload 4
areturn
L1:
aload 4
getstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/INSTANCE Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/filestoragesystem/business/FileSystemUtil/parseFolderInfo(Lorg/json/JSONObject;)Lcom/nd/android/u/filestoragesystem/externalInterface/IFolder;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 5
.limit stack 4
.end method

.method public deletePhotos(ILjava/lang/String;JLjava/util/ArrayList;)Z
.signature "(ILjava/lang/String;JLjava/util/ArrayList<Ljava/lang/Long;>;)Z"
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
.throws java/io/UnsupportedEncodingException
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 0
getfield com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/mContext Landroid/content/Context;
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/getFileStorageRequest(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
astore 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 8
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 9
aload 9
ldc "type"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 9
ldc "sid"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "id"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 9
ldc "fids"
getstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/INSTANCE Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
aload 5
invokevirtual com/nd/android/u/filestoragesystem/business/FileSystemUtil/convertToJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new org/apache/http/entity/StringEntity
dup
aload 9
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
ldc "UTF-8"
invokespecial org/apache/http/entity/StringEntity/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 2
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
ldc "application/json"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentType(Lorg/apache/http/Header;)V
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "Content-Encoding"
ldc "UTF-8"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/entity/StringEntity/setContentEncoding(Lorg/apache/http/Header;)V
aload 7
getstatic com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/UPLOAD_URL Ljava/lang/String;
aload 2
aload 8
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doDeleteWithEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I 3
istore 1
iload 1
sipush 200
if_icmpne L3
L0:
new org/json/JSONObject
dup
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "code"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
istore 6
L1:
iload 6
ifeq L4
iconst_0
ireturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
L4:
iconst_1
ireturn
L3:
iload 1
aload 8
invokestatic com/product/android/utils/HttpErrMsgUtils/parseHttpErrMsg(ILjava/lang/StringBuilder;)V
iconst_0
ireturn
.limit locals 10
.limit stack 5
.end method

.method public getFileList(ILjava/lang/String;JJLjava/lang/String;JJI)Ljava/util/ArrayList;
.signature "(ILjava/lang/String;JJLjava/lang/String;JJI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 13
aload 13
ldc "type"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 13
ldc "sid"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 13
ldc "id"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 7
ifnull L0
aload 13
ldc "path"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
lload 8
lconst_0
lcmp
ifeq L2
aload 13
ldc "id_max"
lload 8
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L2:
lload 10
lconst_0
lcmp
ifeq L3
aload 13
ldc "id_min"
lload 10
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L3:
iload 12
bipush 20
if_icmpeq L4
aload 13
ldc "page_size"
iload 12
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L4:
aload 0
aload 13
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/getFileList(Lorg/json/JSONObject;)Ljava/util/ArrayList;
areturn
L0:
aload 13
ldc "folderid"
lload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
goto L1
.limit locals 14
.limit stack 4
.end method

.method public getMxAlbums(ILjava/lang/String;JIJJLjava/lang/String;I)Ljava/util/ArrayList;
.signature "(ILjava/lang/String;JIJJLjava/lang/String;I)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFolder;>;"
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
aload 0
aload 0
getfield com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/mContext Landroid/content/Context;
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/getFileStorageRequest(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
astore 12
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 13
aload 13
ldc "type"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 13
ldc "sid"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 13
ldc "id"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 13
ldc "class"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 13
ldc "path"
ldc "/photo"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ifnull L0
aload 13
ldc "sort"
aload 10
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
lload 6
lconst_0
lcmp
ifeq L1
aload 13
ldc "id_max"
lload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
lload 8
lconst_0
lcmp
ifeq L2
aload 13
ldc "id_min"
lload 8
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L2:
iload 11
bipush 20
if_icmpeq L3
aload 13
ldc "page_size"
iload 11
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 12
getstatic com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/LIST_URL_FLOLDER Ljava/lang/String;
aload 13
aload 2
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 1
iload 1
sipush 200
if_icmpne L4
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L5:
aload 0
new org/json/JSONArray
dup
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/parseFolderInfoList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
areturn
L4:
iload 1
aload 2
invokestatic com/product/android/utils/HttpErrMsgUtils/parseHttpErrMsg(ILjava/lang/StringBuilder;)V
aconst_null
areturn
.limit locals 14
.limit stack 4
.end method

.method public getPersonalPhotoList(ILjava/lang/String;JJJI)Ljava/util/ArrayList;
.signature "(ILjava/lang/String;JJJI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
aload 10
ldc "type"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 10
ldc "sid"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "id"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 10
ldc "path"
ldc "/photo"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
lload 5
lconst_0
lcmp
ifeq L0
aload 10
ldc "id_max"
lload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L0:
lload 7
lconst_0
lcmp
ifeq L1
aload 10
ldc "id_min"
lload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
iload 9
bipush 20
if_icmpeq L2
aload 10
ldc "page_size"
iload 9
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L2:
aload 0
aload 10
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/getFileList(Lorg/json/JSONObject;)Ljava/util/ArrayList;
areturn
.limit locals 11
.limit stack 4
.end method

.method public upload(Lcom/nd/android/u/filestoragesystem/business/bean/UploadImageParams;)J
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
.throws java/io/IOException
aload 0
aload 0
getfield com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/mContext Landroid/content/Context;
invokespecial com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/getFileStorageRequest(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
astore 3
new org/apache/http/entity/mime/MultipartEntity
dup
getstatic org/apache/http/entity/mime/HttpMultipartMode/BROWSER_COMPATIBLE Lorg/apache/http/entity/mime/HttpMultipartMode;
aconst_null
ldc "utf-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial org/apache/http/entity/mime/MultipartEntity/<init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
astore 4
new java/io/File
dup
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/local_path Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 5
aload 0
getfield com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/mContext Landroid/content/Context;
aload 5
invokestatic com/common/android/utils/ImageUtils/getImageByteArrayBody(Landroid/content/Context;Ljava/io/File;)Lorg/apache/http/entity/mime/content/ByteArrayBody;
astore 6
aload 6
ifnonnull L0
lconst_0
lreturn
L0:
aload 4
ldc "file"
aload 6
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 4
ldc "type"
new org/apache/http/entity/mime/content/StringBody
dup
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/type I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 4
ldc "sid"
new org/apache/http/entity/mime/content/StringBody
dup
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/sid Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 4
ldc "id"
new org/apache/http/entity/mime/content/StringBody
dup
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/id J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 1
aload 5
invokestatic com/common/android/utils/MD5ArithmeticUtils/getFileEncryptString(Ljava/io/File;)Ljava/lang/String;
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/md5 Ljava/lang/String;
aload 4
ldc "md5"
new org/apache/http/entity/mime/content/StringBody
dup
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/md5 Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 4
ldc "path"
new org/apache/http/entity/mime/content/StringBody
dup
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/path Ljava/lang/String;
ldc "utf-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 4
ldc "name"
new org/apache/http/entity/mime/content/StringBody
dup
aload 5
invokevirtual java/io/File/getName()Ljava/lang/String;
ldc "utf-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 4
ldc "set_default"
new org/apache/http/entity/mime/content/StringBody
dup
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/set_default I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/info Lorg/json/JSONObject;
ifnull L1
aload 4
ldc "info"
new org/apache/http/entity/mime/content/StringBody
dup
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/info Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
ldc "utf-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L1:
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/local Ljava/lang/String;
ifnull L2
aload 4
ldc "local"
new org/apache/http/entity/mime/content/StringBody
dup
aload 1
getfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/local Ljava/lang/String;
ldc "utf-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
L2:
aload 4
ldc "size"
new org/apache/http/entity/mime/content/StringBody
dup
aload 6
invokevirtual org/apache/http/entity/mime/content/ByteArrayBody/getContentLength()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/entity/mime/content/StringBody/<init>(Ljava/lang/String;)V
invokevirtual org/apache/http/entity/mime/MultipartEntity/addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 3
getstatic com/nd/android/u/filestoragesystem/business/com/NdFileStorageSdk/UPLOAD_URL Ljava/lang/String;
aload 4
aload 1
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I 3
istore 2
new org/json/JSONObject
dup
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
iload 2
sipush 200
if_icmpne L3
aload 1
ldc "code"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
ldc2_w -1L
lreturn
L4:
aload 1
ldc "fid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
lreturn
L3:
iload 2
aload 1
invokestatic com/product/android/utils/HttpErrMsgUtils/parseHttpErrMsg(ILorg/json/JSONObject;)V
lconst_0
lreturn
.limit locals 7
.limit stack 6
.end method
