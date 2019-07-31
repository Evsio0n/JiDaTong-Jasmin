.bytecode 50.0
.class public synchronized com/common/android/utils/http/HttpClientExt
.super com/common/android/utils/http/HttpClient

.method public <init>()V
aload 0
invokespecial com/common/android/utils/http/HttpClient/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(I)V
aload 0
iload 1
invokespecial com/common/android/utils/http/HttpClient/<init>(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setupHTTPConnectionParams(Lorg/apache/http/client/methods/HttpUriRequest;)V
aload 1
invokeinterface org/apache/http/client/methods/HttpUriRequest/getParams()Lorg/apache/http/params/HttpParams; 0
sipush 20000
invokestatic org/apache/http/params/HttpConnectionParams/setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 1
invokeinterface org/apache/http/client/methods/HttpUriRequest/getParams()Lorg/apache/http/params/HttpParams; 0
ldc_w 60000
invokestatic org/apache/http/params/HttpConnectionParams/setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
aload 1
ldc "Accept-Encoding"
ldc "gzip, deflate"
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "COOKIE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "OAPSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/http/HttpClientExt/sid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "COOKIE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PHPSESSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/http/HttpClientExt/sid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface org/apache/http/client/methods/HttpUriRequest/addHeader(Lorg/apache/http/Header;)V 1
return
.limit locals 2
.limit stack 6
.end method
