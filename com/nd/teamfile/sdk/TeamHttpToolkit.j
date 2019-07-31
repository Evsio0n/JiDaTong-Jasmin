.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/TeamHttpToolkit
.super java/lang/Object

.field private 'httpToolkit' Lcom/common/android/utils/httpRequest/AutoLoginHttpRequest;

.field private 'mResponse' Ljava/lang/String;

.field private 'mRetCode' I

.field private 'mSid' Ljava/lang/String;

.field private 'mUrl' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
iconst_1
iconst_1
invokestatic com/common/android/utils/httpRequest/AutoLoginHttpRequest/getInstance(Landroid/content/Context;II)Lcom/common/android/utils/httpRequest/IHttpRequest;
checkcast com/common/android/utils/httpRequest/AutoLoginHttpRequest
putfield com/nd/teamfile/sdk/TeamHttpToolkit/httpToolkit Lcom/common/android/utils/httpRequest/AutoLoginHttpRequest;
aload 0
aload 2
putfield com/nd/teamfile/sdk/TeamHttpToolkit/mUrl Ljava/lang/String;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
putfield com/nd/teamfile/sdk/TeamHttpToolkit/mSid Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mSid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/httpToolkit Lcom/common/android/utils/httpRequest/AutoLoginHttpRequest;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mSid Ljava/lang/String;
invokevirtual com/common/android/utils/httpRequest/AutoLoginHttpRequest/setSid(Ljava/lang/String;)V
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public doGet()I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 0
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/httpToolkit Lcom/common/android/utils/httpRequest/AutoLoginHttpRequest;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mUrl Ljava/lang/String;
aload 1
invokevirtual com/common/android/utils/httpRequest/AutoLoginHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
putfield com/nd/teamfile/sdk/TeamHttpToolkit/mRetCode I
aload 0
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/teamfile/sdk/TeamHttpToolkit/mResponse Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mRetCode I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public doGet(Ljava/lang/String;)I
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public doPost(Ljava/lang/String;)I
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
aconst_null
astore 2
aload 1
ifnull L1
L0:
new org/apache/http/entity/StringEntity
dup
aload 1
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
L1:
aload 0
aload 2
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Lorg/apache/http/HttpEntity;)I
ireturn
L2:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 5
.end method

.method public doPost(Lorg/apache/http/HttpEntity;)I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 0
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/httpToolkit Lcom/common/android/utils/httpRequest/AutoLoginHttpRequest;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mUrl Ljava/lang/String;
aload 1
aload 2
invokevirtual com/common/android/utils/httpRequest/AutoLoginHttpRequest/doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
putfield com/nd/teamfile/sdk/TeamHttpToolkit/mRetCode I
aload 0
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/teamfile/sdk/TeamHttpToolkit/mResponse Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mRetCode I
ireturn
.limit locals 3
.limit stack 5
.end method

.method public doPost(Lorg/json/JSONArray;)I
aload 0
aload 1
invokevirtual org/json/JSONArray/toString()Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public doPost(Lorg/json/JSONObject;)I
aload 0
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/TeamHttpToolkit/doPost(Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public downloadFile(Ljava/io/File;)I
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/httpToolkit Lcom/common/android/utils/httpRequest/AutoLoginHttpRequest;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mUrl Ljava/lang/String;
aload 1
invokevirtual com/common/android/utils/httpRequest/AutoLoginHttpRequest/doDownFile(Ljava/lang/String;Ljava/io/File;)I
ireturn
.limit locals 2
.limit stack 3
.end method

.method public downloadFile(Ljava/lang/String;Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;)V
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/httpToolkit Lcom/common/android/utils/httpRequest/AutoLoginHttpRequest;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mUrl Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mSid Ljava/lang/String;
aload 1
aload 2
invokevirtual com/common/android/utils/httpRequest/AutoLoginHttpRequest/downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;)V
return
.limit locals 3
.limit stack 5
.end method

.method public getResponse()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mResponse Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRetCode()I
aload 0
getfield com/nd/teamfile/sdk/TeamHttpToolkit/mRetCode I
ireturn
.limit locals 1
.limit stack 1
.end method
