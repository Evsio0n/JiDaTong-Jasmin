.bytecode 50.0
.class public synchronized com/nd/album/com/PraiseCom
.super java/lang/Object

.field private static 'instance' Lcom/nd/album/com/PraiseCom;

.field private static 'oapApi' Lcom/common/android/utils/http/HttpComExt;

.method static <clinit>()V
new com/nd/album/com/PraiseCom
dup
invokespecial com/nd/album/com/PraiseCom/<init>()V
putstatic com/nd/album/com/PraiseCom/instance Lcom/nd/album/com/PraiseCom;
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putstatic com/nd/album/com/PraiseCom/oapApi Lcom/common/android/utils/http/HttpComExt;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/album/com/PraiseCom;
getstatic com/nd/album/com/PraiseCom/instance Lcom/nd/album/com/PraiseCom;
ifnonnull L0
new com/nd/album/com/PraiseCom
dup
invokespecial com/nd/album/com/PraiseCom/<init>()V
putstatic com/nd/album/com/PraiseCom/instance Lcom/nd/album/com/PraiseCom;
L0:
getstatic com/nd/album/com/PraiseCom/instance Lcom/nd/album/com/PraiseCom;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static getOapApi()Lcom/common/android/utils/http/HttpComExt;
getstatic com/nd/album/com/PraiseCom/oapApi Lcom/common/android/utils/http/HttpComExt;
ifnonnull L0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putstatic com/nd/album/com/PraiseCom/oapApi Lcom/common/android/utils/http/HttpComExt;
L0:
getstatic com/nd/album/com/PraiseCom/oapApi Lcom/common/android/utils/http/HttpComExt;
areturn
.limit locals 0
.limit stack 2
.end method

.method public delPraiseGroupPic(JJ)Z
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gpliked/del"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "?app="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&pic_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&apitype=g"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/commonInterface/album/Image/APPCODE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
getstatic com/nd/album/com/PraiseCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
pop
L1:
iconst_1
ireturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L3:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method

.method public delPraisePic(J)Z
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "pliked"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "?pic_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&app="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&apitype=u"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/commonInterface/album/Image/APPCODE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 3
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
getstatic com/nd/album/com/PraiseCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/delete(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
pop
L1:
iconst_1
ireturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public praiseGroupPic(JJ)Z
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "gpliked/add"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "?app="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&pic_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&apitype=g"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/commonInterface/album/Image/APPCODE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&checkcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "841aad25dc9ea84f5244199a6a2a8288"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
getstatic com/nd/album/com/PraiseCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
pop
L1:
iconst_1
ireturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L3:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method

.method public praisePic(J)Z
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "pliked"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "?pic_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&app="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&apitype=u"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/commonInterface/album/Image/APPCODE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 3
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
getstatic com/nd/album/com/PraiseCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
L1:
iconst_1
ireturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method
