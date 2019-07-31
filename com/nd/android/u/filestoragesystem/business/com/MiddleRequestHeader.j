.bytecode 50.0
.class public synchronized com/nd/android/u/filestoragesystem/business/com/MiddleRequestHeader
.super java/lang/Object
.implements com/common/android/utils/httpRequest/ISetHeadAgent

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 1
ldc "COOKIE"
invokevirtual org/apache/http/client/methods/HttpRequestBase/removeHeaders(Ljava/lang/String;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "COOKIE"
new java/lang/StringBuilder
dup
ldc "PHPSESSID="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "SID"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "TAGID"
getstatic com/product/android/business/config/Configuration/TAG_ID I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "CUID"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "CLIENTTYPE"
ldc "Android"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "APPID"
getstatic com/product/android/business/config/Configuration/OAP_APPID I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
ldc "CLOUDID"
invokevirtual org/apache/http/client/methods/HttpRequestBase/removeHeaders(Ljava/lang/String;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "CLOUDID"
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "WEIBO-API-KEY"
getstatic com/product/android/business/config/Configuration/WEIBO_APP_KEY Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "WEIBO-API-SECRET"
getstatic com/product/android/business/config/Configuration/WEIBO_APP_SECRET Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "UAP-SID"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "Content-Type"
ldc "application/json"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
return
.limit locals 2
.limit stack 7
.end method
