.bytecode 50.0
.class public final synchronized enum com/nd/android/u/filestoragesystem/business/FileSystemUtil
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;

.method static <clinit>()V
new com/nd/android/u/filestoragesystem/business/FileSystemUtil
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/filestoragesystem/business/FileSystemUtil/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/INSTANCE Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
iconst_1
anewarray com/nd/android/u/filestoragesystem/business/FileSystemUtil
dup
iconst_0
getstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/INSTANCE Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
aastore
putstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/ENUM$VALUES [Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
ldc com/nd/android/u/filestoragesystem/business/FileSystemUtil
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/filestoragesystem/business/FileSystemUtil
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
getstatic com/nd/android/u/filestoragesystem/business/FileSystemUtil/ENUM$VALUES [Lcom/nd/android/u/filestoragesystem/business/FileSystemUtil;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/filestoragesystem/business/FileSystemUtil
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public convertToJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)Lorg/json/JSONArray;"
aload 1
ifnonnull L0
aconst_null
astore 4
L1:
aload 4
areturn
L0:
aload 1
invokevirtual java/util/ArrayList/size()I
istore 3
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 5
iconst_0
istore 2
L2:
aload 5
astore 4
iload 2
iload 3
if_icmpge L1
aload 5
aload 1
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 6
.limit stack 3
.end method

.method public getMiddleRequest()Lcom/common/android/utils/httpRequest/IHttpRequest;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/product/android/business/config/Configuration/OAP_APPID I
iconst_1
invokestatic com/common/android/utils/httpRequest/AutoLoginHttpRequest/getInstance(Landroid/content/Context;II)Lcom/common/android/utils/httpRequest/IHttpRequest;
astore 1
aload 1
new com/nd/android/u/filestoragesystem/business/com/MiddleRequestHeader
dup
invokespecial com/nd/android/u/filestoragesystem/business/com/MiddleRequestHeader/<init>()V
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/setAgent(Lcom/common/android/utils/httpRequest/ISetHeadAgent;)V 1
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public getMiddleUrl(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getMiddleUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "req?call_url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public parseFileInfo(Lorg/json/JSONObject;)Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new com/nd/android/u/filestoragesystem/business/bean/FileInfo
dup
invokespecial com/nd/android/u/filestoragesystem/business/bean/FileInfo/<init>()V
astore 2
aload 2
aload 1
ldc "fid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setFid(J)V 2
aload 2
aload 1
ldc "folderid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setFolderid(J)V 2
aload 2
aload 1
ldc "cloundid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setCloudid(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setType(I)V 1
aload 2
aload 1
ldc "id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setId(J)V 2
aload 2
aload 1
ldc "appid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setAppid(I)V 1
aload 2
aload 1
ldc "path"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setPath(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "md5"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setMd5(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "mime"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setMd5(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "sort"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setSort(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "ext"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setExt(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "size"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setSize(J)V 2
aload 2
aload 1
ldc "width"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setWidth(I)V 1
aload 2
aload 1
ldc "height"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setHeight(I)V 1
aload 2
aload 1
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setName(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "info"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setInfo(Lorg/json/JSONObject;)V 1
aload 2
aload 1
ldc "hits"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setHits(I)V 1
aload 2
aload 1
ldc "time"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setTime(J)V 2
aload 2
aload 1
ldc "ip"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setIp(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "local"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setLocal(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "flag"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFile/setFlag(I)V 1
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public parseFolderInfo(Lorg/json/JSONObject;)Lcom/nd/android/u/filestoragesystem/externalInterface/IFolder;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new com/nd/android/u/filestoragesystem/business/bean/FolderInfo
dup
invokespecial com/nd/android/u/filestoragesystem/business/bean/FolderInfo/<init>()V
astore 2
aload 2
aload 1
ldc "folderid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setFolderId(J)V 2
aload 2
aload 1
ldc "up_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setUpFolderId(J)V 2
aload 2
aload 1
ldc "path"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setPath(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setFolderName(Ljava/lang/String;)V 1
aload 2
aload 1
ldc "info"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setFolderInfo(Lorg/json/JSONObject;)V 1
aload 2
aload 1
ldc "folders"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setFolders(I)V 1
aload 2
aload 1
ldc "files"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setFiles(I)V 1
aload 2
aload 1
ldc "last_fid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setLastFid(J)V 2
aload 2
aload 1
ldc "default_fid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setDefaultId(J)V 2
aload 2
aload 1
ldc "time"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setCreateTime(J)V 2
aload 2
aload 1
ldc "local"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IFolder/setLocation(Ljava/lang/String;)V 1
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public parseInterActionAttr(JLorg/json/JSONObject;)Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 0
aload 3
new java/lang/StringBuilder
dup
ldc "_"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/filestoragesystem/business/FileSystemUtil/parseInterActionAttr(Lorg/json/JSONObject;)Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;
areturn
.limit locals 4
.limit stack 5
.end method

.method public parseInterActionAttr(Lorg/json/JSONObject;)Lcom/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new com/nd/android/u/filestoragesystem/business/bean/InterActionAttr
dup
invokespecial com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/<init>()V
astore 2
aload 2
aload 1
ldc "praise_num"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr/setPraises(I)V 1
aload 2
aload 1
ldc "praise_done"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr/setPraised(I)V 1
aload 2
aload 1
ldc "favorite_num"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr/setFavorties(I)V 1
aload 2
aload 1
ldc "favorite_done"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr/setFavortied(I)V 1
aload 2
aload 1
ldc "reply_num"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr/setReplys(I)V 1
aload 2
areturn
.limit locals 3
.limit stack 3
.end method
