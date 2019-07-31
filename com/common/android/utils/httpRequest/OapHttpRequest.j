.bytecode 50.0
.class public synchronized com/common/android/utils/httpRequest/OapHttpRequest
.super com/common/android/utils/httpRequest/HttpRequest

.field private static 'mHttp' Lcom/common/android/utils/httpRequest/OapHttpRequest;

.field private 'agent' Lcom/common/android/utils/httpRequest/ISetHeadAgent;

.field private 'oap_id' Ljava/lang/String;

.method protected <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/<init>(Landroid/content/Context;)V
aload 0
ldc "OapHttpRequest"
putfield com/common/android/utils/httpRequest/OapHttpRequest/TAG Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
getstatic com/common/android/utils/httpRequest/OapHttpRequest/mHttp Lcom/common/android/utils/httpRequest/OapHttpRequest;
ifnonnull L0
new com/common/android/utils/httpRequest/OapHttpRequest
dup
aload 0
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/<init>(Landroid/content/Context;)V
putstatic com/common/android/utils/httpRequest/OapHttpRequest/mHttp Lcom/common/android/utils/httpRequest/OapHttpRequest;
L0:
getstatic com/common/android/utils/httpRequest/OapHttpRequest/mHttp Lcom/common/android/utils/httpRequest/OapHttpRequest;
areturn
.limit locals 1
.limit stack 3
.end method

.method public setAgent(Lcom/common/android/utils/httpRequest/ISetHeadAgent;)V
aload 0
aload 1
putfield com/common/android/utils/httpRequest/OapHttpRequest/agent Lcom/common/android/utils/httpRequest/ISetHeadAgent;
return
.limit locals 2
.limit stack 2
.end method

.method public setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 0
getfield com/common/android/utils/httpRequest/OapHttpRequest/oap_id Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "UID"
aload 0
getfield com/common/android/utils/httpRequest/OapHttpRequest/oap_id Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
L0:
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "CLOUDID"
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
L1:
aload 0
getfield com/common/android/utils/httpRequest/OapHttpRequest/agent Lcom/common/android/utils/httpRequest/ISetHeadAgent;
ifnull L2
aload 0
getfield com/common/android/utils/httpRequest/OapHttpRequest/agent Lcom/common/android/utils/httpRequest/ISetHeadAgent;
aload 1
invokeinterface com/common/android/utils/httpRequest/ISetHeadAgent/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V 1
L2:
return
.limit locals 2
.limit stack 5
.end method

.method public setOapId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/httpRequest/OapHttpRequest/oap_id Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
