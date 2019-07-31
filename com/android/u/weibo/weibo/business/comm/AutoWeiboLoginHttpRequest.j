.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest
.super com/common/android/utils/httpRequest/AutoLoginHttpRequest

.field private static '_autoWeiboInstance' Lcom/common/android/utils/httpRequest/IHttpRequest;

.method private <init>(Landroid/content/Context;II)V
aload 0
aload 1
iload 2
iload 3
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/<init>(Landroid/content/Context;II)V
return
.limit locals 4
.limit stack 4
.end method

.method public static getInstance(Landroid/content/Context;II)Lcom/common/android/utils/httpRequest/IHttpRequest;
getstatic com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/_autoWeiboInstance Lcom/common/android/utils/httpRequest/IHttpRequest;
ifnonnull L0
new com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest
dup
aload 0
iload 1
iload 2
invokespecial com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/<init>(Landroid/content/Context;II)V
putstatic com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/_autoWeiboInstance Lcom/common/android/utils/httpRequest/IHttpRequest;
L0:
getstatic com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/_autoWeiboInstance Lcom/common/android/utils/httpRequest/IHttpRequest;
areturn
.limit locals 3
.limit stack 5
.end method

.method public setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
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
getstatic com/android/u/weibo/weibo/business/comm/AutoWeiboLoginHttpRequest/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getSid(Landroid/content/Context;)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "CLOUD-ID"
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
L0:
return
.limit locals 2
.limit stack 5
.end method
