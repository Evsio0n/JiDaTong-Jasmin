.bytecode 50.0
.class public synchronized com/nd/android/u/business/com/ImageCom
.super java/lang/Object

.field private 'mOapHttpApi' Lcom/nd/android/u/allCommonHttp/HttpComExt;

.field private 'mSharefileSid' Ljava/lang/String;

.field private 'mUploadListener' Lcom/nd/android/u/controller/innerInterface/IUploadListener;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/business/com/ImageCom/mSharefileSid Ljava/lang/String;
aload 0
new com/nd/android/u/allCommonHttp/HttpComExt
dup
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getSid(Z)Ljava/lang/String; 1
invokespecial com/nd/android/u/allCommonHttp/HttpComExt/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/business/com/ImageCom/mOapHttpApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
return
.limit locals 1
.limit stack 5
.end method

.method public loginShareFileService()V
.throws com/nd/android/u/allCommonHttp/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L2 using L2
.catch org/json/JSONException from L8 to L9 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L10 to L11 using L2
.catch org/json/JSONException from L11 to L12 using L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getSid(Z)Ljava/lang/String; 1
astore 2
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
invokevirtual com/nd/android/u/controller/ChatConfiguration/getShareFileServiceUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "check.php?s="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/business/com/ImageCom/mOapHttpApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 3
aload 2
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/getAndReloginIfNeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
aload 3
ifnonnull L0
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L13
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ldc ""
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
L13:
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "loginShareFileService fail"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 3
ldc "result"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 1
L1:
aload 3
astore 2
iload 1
sipush 200
if_icmpeq L10
iload 1
sipush 406
if_icmpne L9
L3:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/setExpiredSid()V 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_0
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getSid(Z)Ljava/lang/String; 1
astore 4
L4:
aload 3
astore 2
L5:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L10
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
invokevirtual com/nd/android/u/controller/ChatConfiguration/getShareFileServiceUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "check.php?s="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/business/com/ImageCom/mOapHttpApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 2
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/get(Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L6:
aload 3
ifnonnull L14
L7:
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "loginShareFileService fail"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
new com/nd/android/u/allCommonHttp/HttpException
dup
new java/lang/StringBuilder
dup
ldc "loginShareFileService fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L14:
aload 3
astore 2
L8:
aload 3
ldc "result"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
sipush 200
if_icmpeq L10
new com/nd/android/u/allCommonHttp/HttpException
dup
new java/lang/StringBuilder
dup
ldc "loginShareFileService fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
ldc "errorinfo"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L9:
new com/nd/android/u/allCommonHttp/HttpException
dup
new java/lang/StringBuilder
dup
ldc "loginShareFileService fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L10:
aload 0
aload 2
ldc "sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/business/com/ImageCom/mSharefileSid Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/com/ImageCom/mSharefileSid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L11
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "loginShareFileService fail:null sid"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L11:
aload 0
getfield com/nd/android/u/business/com/ImageCom/mOapHttpApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 0
getfield com/nd/android/u/business/com/ImageCom/mSharefileSid Ljava/lang/String;
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/setSid(Ljava/lang/String;)V
L12:
return
.limit locals 5
.limit stack 5
.end method

.method public postImageToShareFileService(Ljava/io/File;)V
.catch com/nd/android/u/allCommonHttp/HttpException from L0 to L1 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch com/nd/android/u/allCommonHttp/HttpException from L3 to L4 using L2
.catch org/json/JSONException from L6 to L7 using L5
.catch com/nd/android/u/allCommonHttp/HttpException from L6 to L7 using L2
.catch org/json/JSONException from L8 to L9 using L5
.catch com/nd/android/u/allCommonHttp/HttpException from L8 to L9 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L10 to L11 using L2
.catch org/json/JSONException from L12 to L13 using L5
.catch com/nd/android/u/allCommonHttp/HttpException from L12 to L13 using L2
L0:
aload 0
getfield com/nd/android/u/business/com/ImageCom/mSharefileSid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
invokevirtual com/nd/android/u/business/com/ImageCom/loginShareFileService()V
L1:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getSid(Z)Ljava/lang/String; 1
astore 3
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
invokevirtual com/nd/android/u/controller/ChatConfiguration/getShareFileServiceUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "ops/upload_rest.php?s="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/business/com/ImageCom/mOapHttpApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 3
aload 1
aconst_null
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/post(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asJSONObject()Lorg/json/JSONObject;
astore 4
L3:
aload 4
ldc "result"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L4:
iload 2
sipush 403
if_icmpne L14
L6:
ldc "debug"
ldc "postImageToShareFileService relogin"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/business/com/ImageCom/loginShareFileService()V
aload 0
getfield com/nd/android/u/business/com/ImageCom/mOapHttpApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 3
aload 1
aconst_null
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/post(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asJSONObject()Lorg/json/JSONObject;
pop
L7:
return
L14:
iload 2
sipush 200
if_icmpne L12
L8:
aload 4
ldc "fkey"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
ldc "UTF-8"
ldc "US-ASCII"
invokestatic com/nd/android/u/allCommonUtils/StringUtils/changeCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L13
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onSuccess(Ljava/lang/String;)V 1
L9:
return
L5:
astore 1
L10:
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L13
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 1
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
L11:
return
L2:
astore 1
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L15
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpException/getMessage()Ljava/lang/String;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
L15:
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpException/printStackTrace()V
return
L12:
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L13
aload 0
getfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 4
ldc "errorinfo"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
L13:
return
.limit locals 5
.limit stack 4
.end method

.method public setOnUploadListener(Lcom/nd/android/u/controller/innerInterface/IUploadListener;)V
aload 0
aload 1
putfield com/nd/android/u/business/com/ImageCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
return
.limit locals 2
.limit stack 2
.end method
