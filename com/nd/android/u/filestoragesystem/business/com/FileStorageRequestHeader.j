.bytecode 50.0
.class public synchronized com/nd/android/u/filestoragesystem/business/com/FileStorageRequestHeader
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
ldc "CLOUDID"
invokevirtual org/apache/http/client/methods/HttpRequestBase/removeHeaders(Ljava/lang/String;)V
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "CLOUDID"
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getCloudID()Ljava/lang/String;
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
return
.limit locals 2
.limit stack 5
.end method
