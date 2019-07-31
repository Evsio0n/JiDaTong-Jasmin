.bytecode 50.0
.class public synchronized com/nd/android/u/business/com/AudioCom
.super java/lang/Object
.inner class inner com/nd/android/u/business/com/AudioCom$1
.inner class public static UploadEntity inner com/nd/android/u/business/com/AudioCom$UploadEntity outer com/nd/android/u/business/com/AudioCom

.field public static final 'CREATEURL' Ljava/lang/String; = "ofs/upload_c_rest.php"

.field public static final 'ENDURL' Ljava/lang/String; = "ofs/upload_e_rest.php"

.field public static final 'TRANSMIT_URL' Ljava/lang/String; = "ofs/carry.php"

.field public static final 'UPDATEURL' Ljava/lang/String; = "ofs/upload_u_rest.php"

.field final 'DO_NOT_VERIFY' Ljavax/net/ssl/HostnameVerifier;

.field final 'boundary' Ljava/lang/String;

.field final 'lineEnd' Ljava/lang/String;

.field private 'mOapHtppApi' Lcom/nd/android/u/allCommonHttp/HttpComExt;

.field private 'mSSLSocketFactory' Ljavax/net/ssl/SSLSocketFactory;

.field private 'mUploadListener' Lcom/nd/android/u/controller/innerInterface/IUploadListener;

.field final 'multipart_form_data' Ljava/lang/String;

.field final 'twoHyphens' Ljava/lang/String;

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "multipart/form-data"
putfield com/nd/android/u/business/com/AudioCom/multipart_form_data Ljava/lang/String;
aload 0
ldc "--"
putfield com/nd/android/u/business/com/AudioCom/twoHyphens Ljava/lang/String;
aload 0
ldc "****************fD4fH3gL0hK7aI6"
putfield com/nd/android/u/business/com/AudioCom/boundary Ljava/lang/String;
aload 0
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/business/com/AudioCom/lineEnd Ljava/lang/String;
aload 0
new com/nd/android/u/business/com/AudioCom$1
dup
aload 0
invokespecial com/nd/android/u/business/com/AudioCom$1/<init>(Lcom/nd/android/u/business/com/AudioCom;)V
putfield com/nd/android/u/business/com/AudioCom/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
aload 0
new com/nd/android/u/allCommonHttp/HttpComExt
dup
aload 1
invokespecial com/nd/android/u/allCommonHttp/HttpComExt/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/business/com/AudioCom/mOapHtppApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 0
aload 0
invokevirtual com/nd/android/u/business/com/AudioCom/sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
putfield com/nd/android/u/business/com/AudioCom/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
return
.limit locals 2
.limit stack 4
.end method

.method public createFile(Lcom/nd/android/u/business/com/AudioCom$UploadEntity;Z)Ljava/lang/String;
.throws com/nd/android/u/allCommonHttp/HttpException
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L4 to L5 using L2
.catch java/io/IOException from L6 to L7 using L2
.catch java/io/IOException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L11
.catch org/json/JSONException from L12 to L13 using L11
.catch org/json/JSONException from L14 to L15 using L11
.catch org/json/JSONException from L16 to L11 using L11
.catch org/json/JSONException from L17 to L18 using L11
.catch org/json/JSONException from L18 to L19 using L11
.catch org/json/JSONException from L19 to L20 using L11
.catch org/json/JSONException from L21 to L22 using L11
.catch org/json/JSONException from L22 to L23 using L11
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
invokevirtual com/nd/android/u/controller/ChatConfiguration/getShareFileServiceUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "ofs/upload_c_rest.php"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 10
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 11
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/file Ljava/io/File;
astore 12
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/uapSid Ljava/lang/String;
astore 9
aload 12
invokevirtual java/io/File/length()J
lstore 5
L0:
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/mShareFileServiceSid Ljava/lang/String;
astore 8
L1:
aload 8
astore 7
L3:
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
aload 9
invokevirtual com/nd/android/u/business/com/AudioCom/loginShareFileService(Ljava/lang/String;)Ljava/lang/String;
astore 7
L4:
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
istore 4
L5:
iload 4
ifeq L6
ldc ""
areturn
L6:
aload 7
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/mShareFileServiceSid Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L7
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
aload 7
putfield com/nd/android/u/controller/ChatGlobalVariable/mShareFileServiceSid Ljava/lang/String;
L7:
aload 12
invokestatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/getFileEncryptString(Ljava/io/File;)Ljava/lang/String;
astore 7
aload 12
invokestatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/getFileEncryptString(Ljava/io/File;)Ljava/lang/String;
astore 8
L8:
aload 11
ldc "n"
aload 12
invokevirtual java/io/File/getName()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileUtils/getFilename(Ljava/lang/String;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 11
ldc "sz"
new java/lang/StringBuilder
dup
lload 5
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 11
ldc "m"
aload 7
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 11
ldc "s"
ldc "application/octet-stream"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 11
ldc "sh"
aload 8
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/nd/android/u/business/com/AudioCom/mOapHtppApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/mShareFileServiceSid Ljava/lang/String;
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/com/AudioCom/mOapHtppApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 10
aload 11
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/postByMap(Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asJSONObject()Lorg/json/JSONObject;
astore 7
aload 7
ifnonnull L9
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "createFile error:no response data from server"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 7
aload 7
ifnull L24
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/errMsg Ljava/lang/StringBuilder;
new java/lang/StringBuilder
dup
ldc "createFile:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/nowTry I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " time,error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "**"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L24:
ldc ""
areturn
L9:
aload 7
ldc "result"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 3
aload 7
ldc "errorinfo"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 8
L10:
iload 3
sipush 200
if_icmpne L13
L12:
aload 7
ldc "fkey"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
areturn
L13:
iload 3
sipush 403
if_icmpne L19
L14:
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
ldc ""
putfield com/nd/android/u/controller/ChatGlobalVariable/mShareFileServiceSid Ljava/lang/String;
L15:
iload 2
ifeq L18
L16:
ldc "debug"
ldc "relogin"
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 9
invokevirtual com/nd/android/u/business/com/AudioCom/loginShareFileService(Ljava/lang/String;)Ljava/lang/String;
astore 8
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L17
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "relogin shareServer fail:no sid response from server"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L11:
astore 1
new com/nd/android/u/allCommonHttp/HttpException
dup
new java/lang/StringBuilder
dup
ldc "get json error:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 7
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L17:
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
aload 8
putfield com/nd/android/u/controller/ChatGlobalVariable/mShareFileServiceSid Ljava/lang/String;
aload 0
aload 1
iconst_0
invokevirtual com/nd/android/u/business/com/AudioCom/createFile(Lcom/nd/android/u/business/com/AudioCom$UploadEntity;Z)Ljava/lang/String;
areturn
L18:
new com/nd/android/u/allCommonHttp/HttpException
dup
new java/lang/StringBuilder
dup
ldc "relogin shareServer fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L19:
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
ldc ""
putfield com/nd/android/u/controller/ChatGlobalVariable/mShareFileServiceSid Ljava/lang/String;
L20:
iload 2
ifeq L22
L21:
new com/nd/android/u/allCommonHttp/HttpException
dup
new java/lang/StringBuilder
dup
ldc "relogin shareServer fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L22:
new com/nd/android/u/allCommonHttp/HttpException
dup
new java/lang/StringBuilder
dup
ldc "createFile error:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L23:
.limit locals 13
.limit stack 6
.end method

.method public doUpload(Lcom/nd/android/u/business/com/AudioCom$UploadEntity;)Z
.catch com/nd/android/u/allCommonHttp/HttpException from L0 to L1 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L1 to L3 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L4 to L5 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L6 to L7 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L8 to L9 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L10 to L11 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L11 to L12 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L13 to L14 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L14 to L15 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L16 to L17 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L18 to L19 using L2
aconst_null
astore 4
iconst_0
istore 2
L0:
iload 2
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/repeatTimes I
if_icmplt L4
L1:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L8
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L20
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ldc "create file fail"
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
L3:
iconst_0
ireturn
L4:
aload 1
iload 2
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/nowTry I
aload 0
aload 1
iconst_1
invokevirtual com/nd/android/u/business/com/AudioCom/createFile(Lcom/nd/android/u/business/com/AudioCom$UploadEntity;Z)Ljava/lang/String;
astore 5
L5:
aload 5
astore 4
L6:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L7:
iload 2
iconst_1
iadd
istore 2
aload 5
astore 4
goto L0
L8:
aload 1
aload 4
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/fkey Ljava/lang/String;
L9:
iconst_0
istore 2
L10:
iload 2
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/repeatTimes I
if_icmplt L13
L11:
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/isUploadSuccess Z
ifne L21
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L20
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ldc "upload file fail"
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
L12:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpException/printStackTrace()V
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L20
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
new java/lang/StringBuilder
dup
ldc "upload fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
iconst_0
ireturn
L13:
aload 1
iload 2
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/nowTry I
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/packageSize I
sipush 1024
if_icmpge L14
aload 1
sipush 1024
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/packageSize I
L14:
aload 0
aload 1
invokevirtual com/nd/android/u/business/com/AudioCom/uploadFileUpdate(Lcom/nd/android/u/business/com/AudioCom$UploadEntity;)Z
ifeq L22
aload 1
iconst_1
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/isUploadSuccess Z
L15:
goto L11
L16:
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/repeatTimes I
istore 3
L17:
iload 2
iload 3
if_icmplt L18
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L20
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ldc "upload file end fail"
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
iconst_0
ireturn
L18:
aload 1
iload 2
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/nowTry I
aload 0
aload 1
invokevirtual com/nd/android/u/business/com/AudioCom/uploadFileEnd(Lcom/nd/android/u/business/com/AudioCom$UploadEntity;)Z
ifeq L23
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L19
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/fkey Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onSuccess(Ljava/lang/String;)V 1
L19:
iconst_1
ireturn
L23:
iload 2
iconst_1
iadd
istore 2
goto L16
L20:
iconst_0
ireturn
L22:
iload 2
iconst_1
iadd
istore 2
goto L10
L21:
iconst_0
istore 2
goto L16
.limit locals 6
.limit stack 4
.end method

.method public loginShareFileService(Ljava/lang/String;)Ljava/lang/String;
.throws com/nd/android/u/allCommonHttp/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L2 using L2
.catch org/json/JSONException from L8 to L9 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L10 to L11 using L2
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
invokevirtual com/nd/android/u/controller/ChatConfiguration/getShareFileServiceUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "check.php?s="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/business/com/AudioCom/mOapHtppApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 3
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/getAndReloginIfNeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
aload 3
ifnonnull L0
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "loginShareFileService fail"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 3
ldc "result"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L1:
aload 3
astore 1
iload 2
sipush 200
if_icmpeq L10
iload 2
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
astore 1
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
astore 1
aload 0
getfield com/nd/android/u/business/com/AudioCom/mOapHtppApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/get(Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L6:
aload 3
ifnonnull L12
L7:
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "loginShareFileService fail"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "loginShareFileService fail:json error"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L12:
aload 3
astore 1
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
ldc "errorinfo"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L10:
aload 1
ldc "sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L11:
aload 1
areturn
.limit locals 5
.limit stack 5
.end method

.method public setOnUploadListener(Lcom/nd/android/u/controller/innerInterface/IUploadListener;)V
aload 0
aload 1
putfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
return
.limit locals 2
.limit stack 2
.end method

.method public sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/security/KeyManagementException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/security/NoSuchAlgorithmException from L5 to L6 using L2
.catch java/security/KeyManagementException from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch all from L7 to L8 using L4
.catch all from L9 to L10 using L4
new com/nd/android/u/business/com/ChatTrustManager
dup
invokespecial com/nd/android/u/business/com/ChatTrustManager/<init>()V
astore 5
aconst_null
astore 3
aconst_null
astore 1
aconst_null
astore 2
L0:
ldc "SSL"
invokestatic javax/net/ssl/SSLContext/getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
astore 4
L1:
aload 4
astore 2
aload 4
astore 3
aload 4
astore 1
L5:
aload 4
aconst_null
iconst_1
anewarray javax/net/ssl/TrustManager
dup
iconst_0
aload 5
aastore
aconst_null
invokevirtual javax/net/ssl/SSLContext/init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
L6:
aload 4
areturn
L2:
astore 3
aload 2
astore 1
L7:
aload 3
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
L8:
aload 2
areturn
L3:
astore 2
aload 3
astore 1
L9:
aload 2
invokevirtual java/security/KeyManagementException/printStackTrace()V
L10:
aload 3
areturn
L4:
astore 2
aload 1
areturn
.limit locals 6
.limit stack 6
.end method

.method public transmitFile(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
.catch com/nd/android/u/allCommonHttp/ResponseException from L0 to L1 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
.catch com/nd/android/u/allCommonHttp/ResponseException from L5 to L6 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L5 to L6 using L3
.catch org/json/JSONException from L5 to L6 using L4
.catch com/nd/android/u/allCommonHttp/ResponseException from L7 to L8 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L7 to L8 using L3
.catch org/json/JSONException from L7 to L8 using L4
.catch com/nd/android/u/allCommonHttp/ResponseException from L9 to L2 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L9 to L2 using L3
.catch org/json/JSONException from L9 to L2 using L4
.catch com/nd/android/u/allCommonHttp/ResponseException from L10 to L11 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L10 to L11 using L3
.catch org/json/JSONException from L10 to L11 using L4
.catch com/nd/android/u/allCommonHttp/ResponseException from L12 to L3 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L12 to L3 using L3
.catch org/json/JSONException from L12 to L3 using L4
.catch com/nd/android/u/allCommonHttp/ResponseException from L13 to L14 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L13 to L14 using L3
.catch org/json/JSONException from L13 to L14 using L4
.catch com/nd/android/u/allCommonHttp/ResponseException from L15 to L16 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L15 to L16 using L3
.catch org/json/JSONException from L15 to L16 using L4
.catch com/nd/android/u/allCommonHttp/ResponseException from L17 to L18 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L17 to L18 using L3
.catch org/json/JSONException from L17 to L18 using L4
.catch com/nd/android/u/allCommonHttp/ResponseException from L19 to L20 using L2
.catch com/nd/android/u/allCommonHttp/HttpException from L19 to L20 using L3
.catch org/json/JSONException from L19 to L20 using L4
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
invokevirtual com/nd/android/u/controller/ChatConfiguration/getShareFileServiceUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "ofs/carry.php"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
ldc ""
astore 1
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L0:
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
iconst_0
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getSid(Z)Ljava/lang/String; 1
invokevirtual com/nd/android/u/business/com/AudioCom/loginShareFileService(Ljava/lang/String;)Ljava/lang/String;
astore 7
L1:
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L5:
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L21
L6:
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L7:
new com/nd/android/u/allCommonHttp/HttpComExt
dup
aload 7
invokespecial com/nd/android/u/allCommonHttp/HttpComExt/<init>(Ljava/lang/String;)V
aload 6
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/get(Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asJSONObject()Lorg/json/JSONObject;
astore 6
L8:
aload 6
ifnonnull L22
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L9:
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "transmitFile fail"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
aload 1
invokevirtual com/nd/android/u/allCommonHttp/ResponseException/printStackTrace()V
aload 2
aload 1
invokevirtual com/nd/android/u/allCommonHttp/ResponseException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
astore 1
L23:
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L24
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onFail(Ljava/lang/String;I)V 2
L24:
aload 1
areturn
L22:
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L10:
aload 6
ldc "result"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
sipush 200
if_icmpeq L25
L11:
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L12:
new com/nd/android/u/allCommonHttp/HttpException
dup
new java/lang/StringBuilder
dup
ldc "transmitFile fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 6
ldc "errorinfo"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L3:
astore 1
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpException/printStackTrace()V
aload 2
aload 1
invokevirtual com/nd/android/u/allCommonHttp/HttpException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
astore 1
goto L23
L25:
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L13:
aload 6
ldc "fkey"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L14:
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L15:
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L26
L16:
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L17:
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onSuccess(Ljava/lang/String;)V 1
L18:
goto L26
L21:
aload 1
astore 3
aload 1
astore 4
aload 1
astore 5
L19:
aload 2
ldc "loginShareFileService fail"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L20:
goto L23
L4:
astore 1
aload 2
aload 1
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 5
astore 1
goto L23
L26:
aload 1
areturn
.limit locals 8
.limit stack 5
.end method

.method public uploadFileEnd(Lcom/nd/android/u/business/com/AudioCom$UploadEntity;)Z
.throws com/nd/android/u/allCommonHttp/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
invokevirtual com/nd/android/u/controller/ChatConfiguration/getShareFileServiceUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "ofs/upload_e_rest.php"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 3
aload 3
ldc "k"
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/fkey Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/nd/android/u/business/com/AudioCom/mOapHtppApi Lcom/nd/android/u/allCommonHttp/HttpComExt;
aload 2
aload 3
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/postByMap(Ljava/lang/String;Ljava/util/Map;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
aload 2
ifnonnull L0
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/errMsg Ljava/lang/StringBuilder;
new java/lang/StringBuilder
dup
ldc "uploadFileEnd:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/nowTry I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " time,error:null json**"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
iconst_0
ireturn
L0:
aload 2
ldc "result"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
sipush 200
if_icmpne L3
L1:
iconst_1
ireturn
L3:
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/errMsg Ljava/lang/StringBuilder;
new java/lang/StringBuilder
dup
ldc "uploadFileEnd:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/nowTry I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " time,error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
ldc "errorinfo"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "**"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
goto L5
L2:
astore 3
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/errMsg Ljava/lang/StringBuilder;
new java/lang/StringBuilder
dup
ldc "uploadFileEnd:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/nowTry I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " time,error:json error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "**"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
.limit locals 4
.limit stack 4
.end method

.method public uploadFileUpdate(Lcom/nd/android/u/business/com/AudioCom$UploadEntity;)Z
.throws com/nd/android/u/allCommonHttp/HttpException
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/io/IOException from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/io/IOException from L10 to L11 using L12
.catch all from L10 to L11 using L13
.catch java/io/IOException from L14 to L15 using L16
.catch all from L14 to L15 using L17
.catch java/io/IOException from L18 to L19 using L20
.catch java/io/IOException from L21 to L22 using L20
.catch java/io/IOException from L23 to L24 using L20
.catch java/io/IOException from L25 to L26 using L20
.catch java/io/IOException from L27 to L28 using L16
.catch all from L27 to L28 using L17
.catch java/io/IOException from L29 to L30 using L16
.catch all from L29 to L30 using L17
.catch java/io/IOException from L31 to L32 using L16
.catch all from L31 to L32 using L17
.catch java/io/IOException from L33 to L34 using L16
.catch all from L33 to L34 using L17
.catch java/io/IOException from L35 to L36 using L16
.catch all from L35 to L36 using L17
.catch java/io/IOException from L37 to L38 using L16
.catch all from L37 to L38 using L17
.catch java/io/IOException from L39 to L40 using L16
.catch all from L39 to L40 using L17
.catch java/io/IOException from L41 to L42 using L16
.catch all from L41 to L42 using L17
.catch java/io/IOException from L43 to L44 using L16
.catch all from L43 to L44 using L17
.catch java/io/IOException from L45 to L46 using L16
.catch all from L45 to L46 using L17
.catch java/io/IOException from L47 to L48 using L16
.catch all from L47 to L48 using L17
.catch java/io/IOException from L49 to L50 using L16
.catch all from L49 to L50 using L17
.catch java/io/IOException from L51 to L52 using L16
.catch all from L51 to L52 using L17
.catch java/io/IOException from L53 to L54 using L16
.catch all from L53 to L54 using L17
.catch java/io/IOException from L55 to L56 using L16
.catch all from L55 to L56 using L17
.catch java/io/IOException from L57 to L58 using L16
.catch all from L57 to L58 using L17
.catch java/io/IOException from L59 to L60 using L16
.catch all from L59 to L60 using L17
.catch java/io/IOException from L61 to L62 using L16
.catch all from L61 to L62 using L17
.catch java/io/IOException from L63 to L64 using L16
.catch all from L63 to L64 using L17
.catch java/io/IOException from L65 to L66 using L16
.catch all from L65 to L66 using L17
.catch java/io/IOException from L67 to L68 using L16
.catch all from L67 to L68 using L17
.catch java/io/IOException from L69 to L70 using L16
.catch all from L69 to L70 using L17
.catch java/io/IOException from L71 to L72 using L16
.catch all from L71 to L72 using L17
.catch java/io/IOException from L73 to L74 using L16
.catch all from L73 to L74 using L17
.catch java/io/IOException from L75 to L76 using L12
.catch all from L75 to L76 using L13
.catch java/io/IOException from L77 to L78 using L12
.catch all from L77 to L78 using L13
.catch java/io/IOException from L79 to L80 using L12
.catch all from L79 to L80 using L13
.catch java/io/IOException from L81 to L82 using L12
.catch all from L81 to L82 using L13
.catch java/io/IOException from L83 to L84 using L12
.catch all from L83 to L84 using L13
.catch java/io/IOException from L85 to L86 using L12
.catch all from L85 to L86 using L13
.catch java/io/IOException from L87 to L88 using L12
.catch all from L87 to L88 using L13
.catch java/io/IOException from L89 to L90 using L12
.catch all from L89 to L90 using L13
.catch java/io/IOException from L91 to L92 using L12
.catch all from L91 to L92 using L13
.catch java/io/IOException from L93 to L94 using L12
.catch all from L93 to L94 using L13
.catch java/io/IOException from L95 to L96 using L12
.catch all from L95 to L96 using L13
.catch java/io/IOException from L97 to L98 using L12
.catch all from L97 to L98 using L13
.catch java/io/IOException from L99 to L100 using L12
.catch all from L99 to L100 using L13
.catch java/io/IOException from L101 to L102 using L12
.catch all from L101 to L102 using L13
.catch java/io/IOException from L103 to L104 using L12
.catch all from L103 to L104 using L13
.catch java/io/IOException from L105 to L106 using L12
.catch all from L105 to L106 using L13
.catch java/io/IOException from L107 to L108 using L12
.catch all from L107 to L108 using L13
.catch java/io/IOException from L109 to L110 using L12
.catch all from L109 to L110 using L13
.catch java/io/IOException from L111 to L112 using L16
.catch all from L111 to L112 using L17
.catch java/io/IOException from L113 to L114 using L16
.catch all from L113 to L114 using L17
.catch java/io/IOException from L115 to L116 using L16
.catch all from L115 to L116 using L17
.catch java/io/IOException from L117 to L118 using L16
.catch all from L117 to L118 using L17
.catch java/io/IOException from L119 to L120 using L16
.catch all from L119 to L120 using L17
.catch java/io/IOException from L121 to L122 using L16
.catch all from L121 to L122 using L17
.catch java/io/IOException from L123 to L124 using L16
.catch all from L123 to L124 using L17
.catch java/io/IOException from L125 to L126 using L16
.catch all from L125 to L126 using L17
.catch all from L127 to L128 using L3
.catch all from L129 to L130 using L3
.catch java/io/IOException from L131 to L132 using L133
.catch java/io/IOException from L134 to L135 using L133
.catch java/io/IOException from L136 to L137 using L133
.catch java/io/IOException from L138 to L139 using L133
.catch java/io/IOException from L140 to L12 using L12
.catch all from L140 to L12 using L13
.catch java/io/IOException from L141 to L142 using L143
.catch java/io/IOException from L144 to L145 using L143
.catch java/io/IOException from L146 to L147 using L143
.catch java/io/IOException from L148 to L149 using L143
aconst_null
astore 8
aconst_null
astore 7
aconst_null
astore 9
aconst_null
astore 21
aconst_null
astore 24
aconst_null
astore 6
aconst_null
astore 17
aconst_null
astore 15
aconst_null
astore 20
aconst_null
astore 25
aconst_null
astore 14
aconst_null
astore 18
aconst_null
astore 22
aconst_null
astore 23
aconst_null
astore 26
aconst_null
astore 19
aconst_null
astore 16
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/file Ljava/io/File;
astore 27
aload 27
ifnonnull L150
iconst_0
ireturn
L150:
aload 27
invokevirtual java/io/File/length()J
lstore 4
aload 26
astore 10
aload 24
astore 11
aload 8
astore 12
aload 25
astore 13
L0:
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/packageSize I
newarray byte
astore 28
L1:
aload 26
astore 10
aload 24
astore 11
aload 8
astore 12
aload 25
astore 13
L4:
new java/net/URL
dup
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/url Ljava/lang/String;
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 29
L5:
aload 26
astore 10
aload 24
astore 11
aload 8
astore 12
aload 25
astore 13
L6:
ldc "xx"
new java/lang/StringBuilder
dup
ldc "curpos:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/curPos J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
L7:
aload 26
astore 10
aload 24
astore 11
aload 8
astore 12
aload 25
astore 13
L8:
new java/io/FileInputStream
dup
aload 27
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 8
L9:
aload 23
astore 13
aload 21
astore 9
aload 20
astore 12
aload 19
astore 15
aload 6
astore 10
L10:
aload 8
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/curPos J
invokevirtual java/io/InputStream/skip(J)J
pop2
L11:
aload 18
astore 9
aload 17
astore 6
aload 16
astore 7
L151:
aload 7
astore 10
aload 7
astore 12
L14:
aload 8
aload 28
iconst_0
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/packageSize I
invokevirtual java/io/InputStream/read([BII)I
istore 2
L15:
iconst_m1
iload 2
if_icmpne L152
aload 8
ifnull L19
L18:
aload 8
invokevirtual java/io/InputStream/close()V
L19:
aload 6
ifnull L22
L21:
aload 6
invokevirtual java/io/InputStream/close()V
L22:
aload 9
ifnull L24
L23:
aload 9
invokevirtual java/io/DataOutputStream/close()V
L24:
aload 7
ifnull L26
L25:
aload 7
invokevirtual java/net/HttpURLConnection/disconnect()V
L26:
iconst_1
ireturn
L20:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L26
L152:
aload 7
astore 10
aload 7
astore 12
L27:
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 16
L28:
aload 7
astore 10
aload 7
astore 12
L29:
aload 29
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 7
L30:
aload 7
astore 10
aload 7
astore 12
L31:
aload 7
ldc_w 60000
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L32:
aload 7
astore 10
aload 7
astore 12
L33:
aload 7
iconst_1
invokevirtual java/net/HttpURLConnection/setDoInput(Z)V
L34:
aload 7
astore 10
aload 7
astore 12
L35:
aload 7
iconst_1
invokevirtual java/net/HttpURLConnection/setDoOutput(Z)V
L36:
aload 7
astore 10
aload 7
astore 12
L37:
aload 7
iconst_1
invokevirtual java/net/HttpURLConnection/setUseCaches(Z)V
L38:
aload 7
astore 10
aload 7
astore 12
L39:
aload 7
ldc "Cookie"
new java/lang/StringBuilder
dup
ldc "PHPSESSID="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/mShareFileServiceSid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L40:
aload 7
astore 10
aload 7
astore 12
L41:
aload 7
ldc "POST"
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
L42:
aload 7
astore 10
aload 7
astore 12
L43:
aload 7
ldc "connection"
ldc "keep-alive"
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L44:
aload 7
astore 10
aload 7
astore 12
L45:
aload 7
ldc "Charsert"
ldc "UTF-8"
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L46:
aload 7
astore 10
aload 7
astore 12
L47:
aload 7
ldc "Content-Type"
new java/lang/StringBuilder
dup
ldc "multipart/form-data"
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ";boundary="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 16
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L48:
aload 7
astore 10
aload 7
astore 12
L49:
aload 7
instanceof javax/net/ssl/HttpsURLConnection
ifeq L58
L50:
aload 7
astore 10
aload 7
astore 12
L51:
aload 0
getfield com/nd/android/u/business/com/AudioCom/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
ifnonnull L54
L52:
aload 7
astore 10
aload 7
astore 12
L53:
aload 0
aload 0
invokevirtual com/nd/android/u/business/com/AudioCom/sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
putfield com/nd/android/u/business/com/AudioCom/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
L54:
aload 7
astore 10
aload 7
astore 12
L55:
aload 7
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nd/android/u/business/com/AudioCom/mSSLSocketFactory Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/HttpsURLConnection/setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
L56:
aload 7
astore 10
aload 7
astore 12
L57:
aload 7
checkcast javax/net/ssl/HttpsURLConnection
aload 0
getfield com/nd/android/u/business/com/AudioCom/DO_NOT_VERIFY Ljavax/net/ssl/HostnameVerifier;
invokevirtual javax/net/ssl/HttpsURLConnection/setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
L58:
aload 7
astore 10
aload 7
astore 12
L59:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 11
L60:
aload 7
astore 10
aload 7
astore 12
L61:
aload 11
ldc "k"
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/fkey Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L62:
aload 7
astore 10
aload 7
astore 12
L63:
aload 11
ldc "rs"
new java/lang/StringBuilder
dup
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/curPos J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L64:
aload 7
astore 10
aload 7
astore 12
L65:
aload 11
ldc "re"
new java/lang/StringBuilder
dup
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/curPos J
iload 2
i2l
ladd
lconst_1
lsub
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L66:
aload 7
astore 10
aload 7
astore 12
L67:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 17
L68:
aload 7
astore 10
aload 7
astore 12
L69:
aload 11
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 11
L70:
aload 7
astore 10
aload 7
astore 12
L71:
aload 11
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L153
L72:
aload 7
astore 10
aload 7
astore 12
L73:
new java/io/DataOutputStream
dup
aload 7
invokevirtual java/net/HttpURLConnection/getOutputStream()Ljava/io/OutputStream;
invokespecial java/io/DataOutputStream/<init>(Ljava/io/OutputStream;)V
astore 11
L74:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L75:
aload 11
aload 17
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/DataOutputStream/write([B)V
L76:
aload 27
ifnull L96
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L77:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 17
L78:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L79:
aload 17
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L80:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L81:
aload 17
aload 16
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L82:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L83:
aload 17
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L84:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L85:
aload 17
new java/lang/StringBuilder
dup
ldc "Content-Disposition: form-data; name=\"chunk\"; filename=\"0\""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L86:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L87:
aload 17
new java/lang/StringBuilder
dup
ldc "Content-Type: application/octet-stream"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L88:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L89:
aload 17
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L90:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L91:
aload 11
aload 17
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/DataOutputStream/write([B)V
L92:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L93:
aload 11
aload 28
iconst_0
iload 2
invokevirtual java/io/DataOutputStream/write([BII)V
L94:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L95:
aload 11
ldc "\r\n"
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/DataOutputStream/write([B)V
L96:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L97:
aload 11
new java/lang/StringBuilder
dup
ldc "--"
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 16
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/DataOutputStream/write([B)V
L98:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L99:
aload 11
invokevirtual java/io/DataOutputStream/flush()V
L100:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L101:
aload 7
invokevirtual java/net/HttpURLConnection/getResponseCode()I
istore 3
L102:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L103:
aload 7
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 6
L104:
iload 3
sipush 200
if_icmpne L154
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L105:
aload 1
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/curPos J
iload 2
i2l
ladd
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/curPos J
L106:
aload 7
astore 16
aload 6
astore 17
aload 11
astore 18
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L107:
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
ifnull L11
L108:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L109:
aload 0
getfield com/nd/android/u/business/com/AudioCom/mUploadListener Lcom/nd/android/u/controller/innerInterface/IUploadListener;
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/curPos J
lload 4
invokeinterface com/nd/android/u/controller/innerInterface/IUploadListener/onProgressed(JJ)V 4
L110:
aload 11
astore 9
goto L151
L153:
aload 7
astore 10
aload 7
astore 12
L111:
aload 11
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 13
L112:
aload 7
astore 10
aload 7
astore 12
L113:
aload 17
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L114:
aload 7
astore 10
aload 7
astore 12
L115:
aload 17
aload 16
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L116:
aload 7
astore 10
aload 7
astore 12
L117:
aload 17
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L118:
aload 7
astore 10
aload 7
astore 12
L119:
aload 17
new java/lang/StringBuilder
dup
ldc "Content-Disposition: form-data; name=\""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 13
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L120:
aload 7
astore 10
aload 7
astore 12
L121:
aload 17
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L122:
aload 7
astore 10
aload 7
astore 12
L123:
aload 17
aload 13
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L124:
aload 7
astore 10
aload 7
astore 12
L125:
aload 17
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L126:
goto L70
L16:
astore 14
aload 8
astore 7
aload 9
astore 8
aload 6
astore 9
aload 10
astore 6
L155:
aload 6
astore 10
aload 9
astore 11
aload 7
astore 12
aload 8
astore 13
L127:
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/errMsg Ljava/lang/StringBuilder;
new java/lang/StringBuilder
dup
ldc "uploadFileUpdate:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/nowTry I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " time,error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",uploadEntity.packageSize:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/packageSize I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "**"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L128:
aload 6
astore 10
aload 9
astore 11
aload 7
astore 12
aload 8
astore 13
L129:
aload 1
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/packageSize I
aload 1
getfield com/nd/android/u/business/com/AudioCom$UploadEntity/shiftCount I
ishr
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/packageSize I
L130:
aload 7
ifnull L132
L131:
aload 7
invokevirtual java/io/InputStream/close()V
L132:
aload 9
ifnull L135
L134:
aload 9
invokevirtual java/io/InputStream/close()V
L135:
aload 8
ifnull L137
L136:
aload 8
invokevirtual java/io/DataOutputStream/close()V
L137:
aload 6
ifnull L139
L138:
aload 6
invokevirtual java/net/HttpURLConnection/disconnect()V
L139:
iconst_0
ireturn
L154:
aload 7
astore 13
aload 6
astore 9
aload 11
astore 12
aload 7
astore 15
aload 6
astore 10
aload 11
astore 14
L140:
new com/nd/android/u/allCommonHttp/HttpException
dup
ldc "error response code"
invokespecial com/nd/android/u/allCommonHttp/HttpException/<init>(Ljava/lang/String;)V
athrow
L12:
astore 14
aload 8
astore 7
aload 13
astore 6
aload 12
astore 8
goto L155
L133:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L139
L3:
astore 7
aload 12
astore 1
aload 11
astore 6
aload 10
astore 12
L156:
aload 1
ifnull L142
L141:
aload 1
invokevirtual java/io/InputStream/close()V
L142:
aload 6
ifnull L145
L144:
aload 6
invokevirtual java/io/InputStream/close()V
L145:
aload 13
ifnull L147
L146:
aload 13
invokevirtual java/io/DataOutputStream/close()V
L147:
aload 12
ifnull L149
L148:
aload 12
invokevirtual java/net/HttpURLConnection/disconnect()V
L149:
aload 7
athrow
L143:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L149
L13:
astore 7
aload 8
astore 1
aload 15
astore 12
aload 10
astore 6
aload 14
astore 13
goto L156
L17:
astore 7
aload 8
astore 1
aload 9
astore 13
goto L156
L2:
astore 14
aload 22
astore 6
aload 15
astore 8
goto L155
.limit locals 30
.limit stack 8
.end method
