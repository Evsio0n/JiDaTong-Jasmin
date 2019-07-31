.bytecode 50.0
.class public synchronized com/nd/album/com/CommentCom
.super java/lang/Object

.field private static 'instance' Lcom/nd/album/com/CommentCom;

.field private static 'oapApi' Lcom/common/android/utils/http/HttpComExt;

.method static <clinit>()V
new com/nd/album/com/CommentCom
dup
invokespecial com/nd/album/com/CommentCom/<init>()V
putstatic com/nd/album/com/CommentCom/instance Lcom/nd/album/com/CommentCom;
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putstatic com/nd/album/com/CommentCom/oapApi Lcom/common/android/utils/http/HttpComExt;
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

.method public static getInstance()Lcom/nd/album/com/CommentCom;
getstatic com/nd/album/com/CommentCom/instance Lcom/nd/album/com/CommentCom;
ifnonnull L0
new com/nd/album/com/CommentCom
dup
invokespecial com/nd/album/com/CommentCom/<init>()V
putstatic com/nd/album/com/CommentCom/instance Lcom/nd/album/com/CommentCom;
L0:
getstatic com/nd/album/com/CommentCom/instance Lcom/nd/album/com/CommentCom;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static getOapApi()Lcom/common/android/utils/http/HttpComExt;
getstatic com/nd/album/com/CommentCom/oapApi Lcom/common/android/utils/http/HttpComExt;
ifnonnull L0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putstatic com/nd/album/com/CommentCom/oapApi Lcom/common/android/utils/http/HttpComExt;
L0:
getstatic com/nd/album/com/CommentCom/oapApi Lcom/common/android/utils/http/HttpComExt;
areturn
.limit locals 0
.limit stack 2
.end method

.method public getPhotoComments(JIILjava/util/ArrayList;)I
.signature "(JIILjava/util/ArrayList<Lcom/nd/album/bean/Comment;>;)I"
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L3 to L4 using L5
.catch com/common/android/utils/http/HttpException from L3 to L4 using L6
.catch com/common/android/utils/http/ResponseException from L7 to L8 using L5
.catch com/common/android/utils/http/HttpException from L7 to L8 using L6
.catch com/common/android/utils/http/ResponseException from L9 to L10 using L5
.catch com/common/android/utils/http/HttpException from L9 to L10 using L6
.catch com/common/android/utils/http/ResponseException from L11 to L12 using L5
.catch com/common/android/utils/http/HttpException from L11 to L12 using L6
.catch com/common/android/utils/http/ResponseException from L13 to L14 using L5
.catch com/common/android/utils/http/HttpException from L13 to L14 using L6
.catch com/common/android/utils/http/ResponseException from L15 to L16 using L5
.catch com/common/android/utils/http/HttpException from L15 to L16 using L6
.catch com/common/android/utils/http/ResponseException from L17 to L18 using L5
.catch com/common/android/utils/http/HttpException from L17 to L18 using L6
.catch com/common/android/utils/http/ResponseException from L19 to L20 using L5
.catch com/common/android/utils/http/HttpException from L19 to L20 using L6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 9
aload 9
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "cmmnt"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 9
ldc "?app="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 9
ldc "&apitype=u"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 9
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
ifnull L21
aload 9
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 9
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L21:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
L0:
aload 10
ldc "code"
ldc "getphotocomment"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "pid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 10
ldc "page"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 10
ldc "count"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
iconst_0
istore 7
iconst_0
istore 3
iload 3
istore 4
iload 7
istore 6
L3:
getstatic com/nd/album/com/CommentCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 9
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 10
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
ldc "result"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 10
L4:
iload 3
istore 4
iload 7
istore 6
L7:
aload 10
ldc "limit"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 8
L8:
iload 3
istore 4
iload 7
istore 6
L9:
aload 10
ldc "items"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 9
L10:
iload 3
istore 4
iload 7
istore 6
L11:
aload 10
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 3
L12:
iconst_0
istore 7
L22:
iload 3
istore 4
iload 7
iload 8
if_icmpge L23
iload 3
istore 4
iload 3
istore 6
L13:
new com/nd/album/bean/Comment
dup
invokespecial com/nd/album/bean/Comment/<init>()V
astore 10
L14:
iload 3
istore 4
iload 3
istore 6
L15:
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 11
L16:
aload 11
ifnull L20
iload 3
istore 4
iload 3
istore 6
L17:
aload 10
aload 11
invokevirtual com/nd/album/bean/Comment/parseJsonDateline(Lorg/json/JSONObject;)V
L18:
iload 3
istore 4
iload 3
istore 6
L19:
aload 5
aload 10
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L20:
iload 7
iconst_1
iadd
istore 7
goto L22
L2:
astore 11
aload 11
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
L5:
astore 5
aload 5
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L23:
iload 4
ireturn
L6:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 6
ireturn
.limit locals 12
.limit stack 4
.end method

.method public postComment(JLjava/lang/String;)Lcom/nd/album/bean/Comment;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L3 to L4 using L5
.catch com/common/android/utils/http/HttpException from L3 to L4 using L6
.catch com/common/android/utils/http/ResponseException from L4 to L7 using L8
.catch com/common/android/utils/http/HttpException from L4 to L7 using L9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
invokestatic com/product/android/business/config/Configuration/getAlbumServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "cmmnt"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "?app="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "&apitype=u"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
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
ifnull L10
aload 4
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L10:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
L0:
aload 7
ldc "code"
ldc "addphotocomment"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "pid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 7
ldc "comment"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aconst_null
astore 6
aconst_null
astore 5
L3:
getstatic com/nd/album/com/CommentCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 7
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 4
new com/nd/album/bean/Comment
dup
invokespecial com/nd/album/bean/Comment/<init>()V
astore 3
L4:
aload 3
aload 4
ldc "result"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/nd/album/bean/Comment/parseJson(Lorg/json/JSONObject;)V
L7:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
L5:
astore 4
aload 5
astore 3
L11:
aload 4
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
aload 3
areturn
L6:
astore 4
aload 6
astore 3
L12:
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 3
areturn
L9:
astore 4
goto L12
L8:
astore 4
goto L11
.limit locals 8
.limit stack 4
.end method
