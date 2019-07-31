.bytecode 50.0
.class public synchronized com/nd/album/com/AlbumCom
.super java/lang/Object

.field public static final 'GROUP_COM_KEY' Ljava/lang/String; = "841aad25dc9ea84f5244199a6a2a8288"

.field private static 'instance' Lcom/nd/album/com/AlbumCom;

.field private static 'oapApi' Lcom/common/android/utils/http/HttpComExt;

.field private final 'TAG' Ljava/lang/String;

.method static <clinit>()V
new com/nd/album/com/AlbumCom
dup
invokespecial com/nd/album/com/AlbumCom/<init>()V
putstatic com/nd/album/com/AlbumCom/instance Lcom/nd/album/com/AlbumCom;
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "AlbumCom"
putfield com/nd/album/com/AlbumCom/TAG Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method private getDefaultAlbumIdJson(J)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "album?album_default="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
ldc "AlbumCom"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getDefaultAlbumurl:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/album/com/AlbumCom;
getstatic com/nd/album/com/AlbumCom/instance Lcom/nd/album/com/AlbumCom;
ifnonnull L0
new com/nd/album/com/AlbumCom
dup
invokespecial com/nd/album/com/AlbumCom/<init>()V
putstatic com/nd/album/com/AlbumCom/instance Lcom/nd/album/com/AlbumCom;
L0:
getstatic com/nd/album/com/AlbumCom/instance Lcom/nd/album/com/AlbumCom;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static getOapApi()Lcom/common/android/utils/http/HttpComExt;
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
ifnonnull L0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
L0:
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
areturn
.limit locals 0
.limit stack 2
.end method

.method private getPhotoInfoJson(JJII)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 7
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "photo?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
lload 1
lconst_0
lcmp
ifeq L0
aload 7
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L1:
aload 7
ldc "&start="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
iload 6
ifle L2
aload 7
ldc "&pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L2:
aload 7
ldc "&likedcnt=1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 7
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
astore 7
aload 7
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
sipush 204
if_icmpne L3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L0:
lload 3
lconst_0
lcmp
ifeq L4
aload 7
ldc "aid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
goto L1
L4:
aconst_null
areturn
L3:
aload 7
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 8
.limit stack 4
.end method

.method private uploadGImage1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
astore 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 7
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gphoto/upload1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 7
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
aload 7
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 7
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
aload 6
ldc "file_dna"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "album_id"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "pic_title"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "pic_desc"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "file_size"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 9
.limit stack 3
.end method

.method private uploadGImage2(Ljava/lang/String;Ljava/lang/String;[B)V
.throws com/common/android/utils/http/HttpException
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gphoto/upload2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&upload_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/dopost(Ljava/lang/String;[B)Lcom/common/android/utils/http/Response;
pop
return
.limit locals 6
.limit stack 3
.end method

.method private uploadGImage3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gphoto/upload3"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
aload 4
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "&upload_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 5
.limit stack 3
.end method

.method public addGAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
aload 5
ldc "album_name"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "album_desc"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "galbum/create"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
aload 1
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
aload 1
ifnull L0
aload 1
ldc "album_id"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lreturn
L0:
ldc2_w -1L
lreturn
.limit locals 6
.limit stack 3
.end method

.method public delGPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
aload 2
astore 7
aload 2
ifnonnull L0
aload 0
aload 1
iload 4
invokevirtual com/nd/album/com/AlbumCom/getFirstGAlbumID(Ljava/lang/String;I)J
lstore 5
lload 5
lconst_0
lcmp
ifle L1
lload 5
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
astore 7
L0:
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gphoto/del"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
aload 1
ldc "album_id"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "pic_id"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
L1:
return
.limit locals 9
.limit stack 4
.end method

.method public delPhoto(J)V
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "photo/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/delete(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
pop
return
.limit locals 4
.limit stack 3
.end method

.method public getAlbumListInfo(JZ)Ljava/util/ArrayList;
.signature "(JZ)Ljava/util/ArrayList<Lcom/nd/album/bean/AlbumInfo;>;"
.throws com/common/android/utils/http/HttpException
aconst_null
astore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 7
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "album"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 7
ldc "?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 7
ldc "&start="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 7
ldc "&pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 100
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
iload 3
ifne L0
aload 7
ldc "&privacy="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "5"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 7
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 8
aload 8
ifnull L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 8
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 5
aload 8
ldc "data"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 8
aload 7
astore 6
aload 8
ifnull L1
iconst_0
istore 4
L2:
aload 7
astore 6
iload 4
iload 5
if_icmpge L1
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 6
aload 6
ifnull L3
new com/nd/album/bean/AlbumInfo
dup
invokespecial com/nd/album/bean/AlbumInfo/<init>()V
astore 9
aload 9
aload 6
ldc "album_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/AlbumInfo/mAlbumId J
aload 9
aload 6
ldc "album_name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/album/bean/AlbumInfo/mAlbumName Ljava/lang/String;
aload 9
aload 6
ldc "cover_pic_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/AlbumInfo/mCoverPicId J
aload 9
aload 6
ldc "cover_pic_url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/album/bean/AlbumInfo/mCoverPicUrl Ljava/lang/String;
aload 9
aload 6
ldc "create_dt"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/AlbumInfo/mCreateTime J
aload 9
aload 6
ldc "update_dt"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/AlbumInfo/mUpdateTime J
aload 9
aload 6
ldc "album_default"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/album/bean/AlbumInfo/mAlbumType I
aload 9
aload 6
ldc "user_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/AlbumInfo/mOwnerId J
aload 9
aload 6
ldc "pic_num"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/album/bean/AlbumInfo/mPicNum I
aload 7
aload 9
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L3:
iload 4
iconst_1
iadd
istore 4
goto L2
L1:
aload 6
areturn
.limit locals 10
.limit stack 3
.end method

.method public getAlbumPhotos(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.throws com/common/android/utils/http/HttpException
aload 0
lconst_0
lload 1
iconst_0
iconst_0
invokevirtual com/nd/album/com/AlbumCom/getAllPhotos(JJIZ)Ljava/util/ArrayList;
areturn
.limit locals 3
.limit stack 7
.end method

.method public getAlbumPhotosByAlbumId(JII)Ljava/util/ArrayList;
.signature "(JII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.throws com/common/android/utils/http/HttpException
aconst_null
astore 6
aconst_null
astore 5
aload 0
lconst_0
lload 1
iload 3
iload 4
invokespecial com/nd/album/com/AlbumCom/getPhotoInfoJson(JJII)Lorg/json/JSONObject;
astore 7
aload 7
ifnull L0
iconst_0
ifne L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
L1:
aload 7
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 4
aload 7
ldc "data"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 8
aload 8
ifnonnull L2
aload 5
areturn
L2:
iconst_0
istore 3
L3:
aload 5
astore 6
iload 3
iload 4
if_icmpge L0
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 6
aload 6
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/album/Image/parseImageInfoJson(Lorg/json/JSONObject;)V
aload 6
aload 7
ldc "limit_total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/album/Image/setTotalSize(I)V
aload 5
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L3
L0:
aload 6
areturn
.limit locals 9
.limit stack 7
.end method

.method public getAllPhotos(JJIZ)Ljava/util/ArrayList;
.signature "(JJIZ)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.throws com/common/android/utils/http/HttpException
aconst_null
astore 11
iconst_0
istore 8
iload 5
ifgt L0
bipush 100
istore 7
L1:
aload 0
lload 1
lload 3
iload 8
iload 7
invokespecial com/nd/album/com/AlbumCom/getPhotoInfoJson(JJII)Lorg/json/JSONObject;
astore 12
aload 12
ifnull L2
aload 11
astore 10
aload 11
ifnonnull L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
L3:
aload 12
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 9
aload 12
ldc "data"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 11
aload 11
ifnonnull L4
aload 10
areturn
L0:
iload 5
istore 7
goto L1
L4:
iconst_0
istore 5
L5:
iload 5
iload 9
if_icmpge L6
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 12
aload 12
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/album/Image/parseImageInfoJson(Lorg/json/JSONObject;)V
aload 10
aload 12
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 5
iconst_1
iadd
istore 5
goto L5
L6:
iload 8
iload 9
iadd
istore 8
iload 9
iload 7
if_icmplt L7
iload 6
ifne L7
iconst_1
istore 5
L8:
aload 10
astore 11
iload 5
ifne L1
aload 10
areturn
L7:
iconst_0
istore 5
goto L8
L2:
iconst_0
istore 5
aload 11
astore 10
goto L8
.limit locals 13
.limit stack 7
.end method

.method public getDefaultAlbumId(J)J
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
lload 1
invokespecial com/nd/album/com/AlbumCom/getDefaultAlbumIdJson(J)Lorg/json/JSONObject;
astore 3
L1:
lconst_0
lstore 1
aload 3
ifnull L3
aload 3
ldc "album_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
lstore 1
L3:
lload 1
lreturn
L2:
astore 3
aload 0
lload 1
invokespecial com/nd/album/com/AlbumCom/getDefaultAlbumIdJson(J)Lorg/json/JSONObject;
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method public getFirstGAlbumID(Ljava/lang/String;I)J
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
astore 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 8
aload 8
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "galbum/info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
aload 8
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
ldc "&start=0&pos=1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
ldc "&category="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
ldc2_w -1L
lstore 5
lload 5
lstore 3
aload 1
ifnull L0
lload 5
lstore 3
aload 1
ldc "total"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lconst_0
lcmp
ifle L0
aload 1
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
lload 5
lstore 3
aload 1
ifnull L0
aload 1
ldc "0"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
lload 5
lstore 3
aload 1
ifnull L0
aload 1
ldc "album_id"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 3
L0:
lload 3
lreturn
.limit locals 9
.limit stack 4
.end method

.method public getGPhotoIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
.signature "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList<Ljava/lang/Long;>;"
.throws com/common/android/utils/http/HttpException
.throws java/io/IOException
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
astore 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 11
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 12
aload 12
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gphoto/info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 12
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
aload 12
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ifnull L0
aload 12
ldc "&album_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 12
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ifnull L1
aload 12
ldc "&time="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 12
ldc "&short=9"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iconst_0
istore 8
aload 4
ifnull L2
aload 12
ldc "&start="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 8
L2:
bipush 20
istore 7
aload 5
ifnull L3
aload 12
ldc "&pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 7
L3:
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 12
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 5
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 10
iload 10
iload 8
isub
iload 7
if_icmple L4
L5:
iconst_0
istore 9
L6:
iload 9
iload 7
if_icmpge L7
aload 4
aload 5
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 9
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
ldc "pic_id"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 9
iconst_1
iadd
istore 9
goto L6
L4:
iload 10
iload 8
isub
istore 7
goto L5
L7:
iload 6
ifeq L8
iload 8
iload 7
iadd
iload 10
if_icmpge L8
aload 0
aload 1
aload 2
aload 3
iload 7
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aconst_null
iload 6
invokevirtual com/nd/album/com/AlbumCom/getGPhotoIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
astore 1
aload 1
ifnull L8
aload 4
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L8:
aload 4
areturn
.limit locals 13
.limit stack 7
.end method

.method public getGPhotoInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
.signature "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.throws com/common/android/utils/http/HttpException
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
astore 12
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 12
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 12
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 13
aload 13
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gphoto/info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 13
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
aload 13
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ifnull L0
aload 13
ldc "&album_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 13
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ifnull L2
aload 13
ldc "&time="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
iconst_0
istore 9
aload 5
ifnull L3
aload 13
ldc "&start="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 9
L3:
bipush 20
istore 8
aload 6
ifnull L4
aload 13
ldc "&pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 8
L4:
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 13
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 5
aload 5
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 11
iload 11
ifne L5
aconst_null
astore 5
L6:
aload 5
areturn
L0:
aload 3
ifnull L1
aload 13
ldc "&pic_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
L5:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
iload 11
iload 9
isub
iload 8
if_icmple L7
L8:
iconst_0
istore 10
L9:
iload 10
iload 8
if_icmpge L10
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 12
aload 5
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 10
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 13
aload 12
aload 13
invokevirtual com/product/android/commonInterface/album/Image/setGroupAlbumJsonObject(Lorg/json/JSONObject;)V
aload 12
aload 1
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokevirtual com/product/android/commonInterface/album/Image/setGid(J)V
aload 12
aload 13
ldc "creator_uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokevirtual com/product/android/commonInterface/album/Image/setCreateUid(J)V
aload 12
aload 13
ldc "file_md5"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/album/Image/setFile_dna(Ljava/lang/String;)V
aload 6
aload 12
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 10
iconst_1
iadd
istore 10
goto L9
L7:
iload 11
iload 9
isub
istore 8
goto L8
L10:
aload 6
astore 5
iload 7
ifeq L6
aload 6
astore 5
iload 9
iload 8
iadd
iload 11
if_icmpge L6
aload 0
aload 1
aload 2
aload 3
aload 4
iload 8
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aconst_null
iload 7
invokevirtual com/nd/album/com/AlbumCom/getGPhotoInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
astore 1
aload 6
astore 5
aload 1
ifnull L6
aload 6
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 6
areturn
.limit locals 14
.limit stack 8
.end method

.method public getLatestPhotos(JI)Ljava/util/ArrayList;
.signature "(JI)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
lconst_0
iload 3
iconst_1
invokevirtual com/nd/album/com/AlbumCom/getAllPhotos(JJIZ)Ljava/util/ArrayList;
areturn
.limit locals 4
.limit stack 7
.end method

.method public getPhotoInfoByPid(J)Lcom/product/android/commonInterface/album/Image;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "photo/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
L0:
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 4
aload 4
aload 3
invokevirtual com/product/android/commonInterface/album/Image/parseImageInfoJson(Lorg/json/JSONObject;)V
L1:
aload 4
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 5
.limit stack 3
.end method

.method public getUserAllPhotos(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
lconst_0
iconst_0
iconst_0
invokevirtual com/nd/album/com/AlbumCom/getAllPhotos(JJIZ)Ljava/util/ArrayList;
areturn
.limit locals 3
.limit stack 7
.end method

.method public requestUpload(Ljava/lang/String;JLjava/lang/String;II)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 7
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "photo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 7
ldc "?checkdup=1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 7
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
aload 8
ldc "file_dna"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "album_id"
lload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 8
ldc "upload_file_name"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "file_size"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 8
ldc "pic_type"
iload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
ldc "AlbumCom"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u8bf7\u6c42\u4e0a\u4f20\u65ad\u70b9\u4fe1\u606furl = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "AlbumCom"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u53c2\u6570 = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 8
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 9
.limit stack 4
.end method

.method public sendUploadEnd(Ljava/lang/String;II)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "upload/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "?flen="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 4
ldc "&createcomment="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 4
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 5
.limit stack 3
.end method

.method public uploadGImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
aload 1
aload 2
aload 3
aload 4
iload 5
aload 6
invokespecial com/nd/album/com/AlbumCom/uploadGImage1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
astore 1
L1:
aload 1
astore 2
aload 1
ldc "upload_id"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 1
ldc "upload_id"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
astore 2
aload 3
ifnull L3
aload 1
astore 2
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 0
aload 3
aload 6
aload 7
invokespecial com/nd/album/com/AlbumCom/uploadGImage2(Ljava/lang/String;Ljava/lang/String;[B)V
aload 0
aload 3
aload 6
invokespecial com/nd/album/com/AlbumCom/uploadGImage3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
astore 2
L3:
aload 2
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 400
if_icmpne L4
new org/json/JSONObject
dup
aload 1
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "exist"
iconst_1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Z)Lorg/json/JSONObject;
pop
aload 1
areturn
L4:
aconst_null
areturn
.limit locals 8
.limit stack 7
.end method

.method public uploadImage(Ljava/lang/String;JJ[B)V
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 7
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "upload/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 7
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 7
ldc "?offset="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 7
ldc "&flen="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 7
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
pop
getstatic com/nd/album/com/AlbumCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/dopost(Ljava/lang/String;[B)Lcom/common/android/utils/http/Response;
pop
return
.limit locals 8
.limit stack 3
.end method
