.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/download/HttpClientImageDownloader
.super com/nostra13/universalimageloader/core/download/BaseImageDownloader

.field private 'httpClient' Lorg/apache/http/client/HttpClient;

.method public <init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/download/BaseImageDownloader/<init>(Landroid/content/Context;)V
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/download/HttpClientImageDownloader/httpClient Lorg/apache/http/client/HttpClient;
return
.limit locals 3
.limit stack 2
.end method

.method protected getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/io/InputStream;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
new org/apache/http/client/methods/HttpGet
dup
aload 1
invokespecial org/apache/http/client/methods/HttpGet/<init>(Ljava/lang/String;)V
astore 1
aload 3
ifnull L0
aload 3
invokevirtual java/util/HashMap/size()I
ifle L0
aload 3
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
new org/apache/http/entity/BufferedHttpEntity
dup
aload 0
getfield com/nostra13/universalimageloader/core/download/HttpClientImageDownloader/httpClient Lorg/apache/http/client/HttpClient;
aload 1
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokespecial org/apache/http/entity/BufferedHttpEntity/<init>(Lorg/apache/http/HttpEntity;)V
invokevirtual org/apache/http/entity/BufferedHttpEntity/getContent()Ljava/io/InputStream;
areturn
L2:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 1
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual org/apache/http/client/methods/HttpGet/addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto L1
.limit locals 4
.limit stack 4
.end method
