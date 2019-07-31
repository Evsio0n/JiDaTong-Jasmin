.bytecode 50.0
.class public synchronized com/bumptech/glide/load/data/HttpUrlFetcher
.super java/lang/Object
.implements com/bumptech/glide/load/data/DataFetcher
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
.inner class static synthetic inner com/bumptech/glide/load/data/HttpUrlFetcher$1
.inner class private static DefaultHttpUrlConnectionFactory inner com/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory outer com/bumptech/glide/load/data/HttpUrlFetcher
.inner class static abstract interface HttpUrlConnectionFactory inner com/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory outer com/bumptech/glide/load/data/HttpUrlFetcher

.field private static final 'DEFAULT_CONNECTION_FACTORY' Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

.field private static final 'MAXIMUM_REDIRECTS' I = 5


.field private static final 'TAG' Ljava/lang/String; = "HttpUrlFetcher"

.field private final 'connectionFactory' Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

.field private final 'glideUrl' Lcom/bumptech/glide/load/model/GlideUrl;

.field private volatile 'isCancelled' Z

.field private 'stream' Ljava/io/InputStream;

.field private 'urlConnection' Ljava/net/HttpURLConnection;

.method static <clinit>()V
new com/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory
dup
aconst_null
invokespecial com/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory/<init>(Lcom/bumptech/glide/load/data/HttpUrlFetcher$1;)V
putstatic com/bumptech/glide/load/data/HttpUrlFetcher/DEFAULT_CONNECTION_FACTORY Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/load/model/GlideUrl;)V
aload 0
aload 1
getstatic com/bumptech/glide/load/data/HttpUrlFetcher/DEFAULT_CONNECTION_FACTORY Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;
invokespecial com/bumptech/glide/load/data/HttpUrlFetcher/<init>(Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;)V
return
.limit locals 2
.limit stack 3
.end method

.method <init>(Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/data/HttpUrlFetcher/glideUrl Lcom/bumptech/glide/load/model/GlideUrl;
aload 0
aload 2
putfield com/bumptech/glide/load/data/HttpUrlFetcher/connectionFactory Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;
return
.limit locals 3
.limit stack 2
.end method

.method private getStreamForSuccessfulRequest(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
.throws java/io/IOException
aload 1
invokevirtual java/net/HttpURLConnection/getContentEncoding()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 1
invokevirtual java/net/HttpURLConnection/getContentLength()I
istore 2
aload 0
aload 1
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
iload 2
i2l
invokestatic com/bumptech/glide/util/ContentLengthInputStream/obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;
putfield com/bumptech/glide/load/data/HttpUrlFetcher/stream Ljava/io/InputStream;
L1:
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/stream Ljava/io/InputStream;
areturn
L0:
ldc "HttpUrlFetcher"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L2
ldc "HttpUrlFetcher"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Got non empty content encoding: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/net/HttpURLConnection/getContentEncoding()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
aload 0
aload 1
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
putfield com/bumptech/glide/load/data/HttpUrlFetcher/stream Ljava/io/InputStream;
goto L1
.limit locals 3
.limit stack 4
.end method

.method private loadDataWithRedirects(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
.signature "(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
.catch java/net/URISyntaxException from L0 to L1 using L1
iload 2
iconst_5
if_icmplt L2
new java/io/IOException
dup
ldc "Too many (> 5) redirects!"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 3
ifnull L3
L0:
aload 1
invokevirtual java/net/URL/toURI()Ljava/net/URI;
aload 3
invokevirtual java/net/URL/toURI()Ljava/net/URI;
invokevirtual java/net/URI/equals(Ljava/lang/Object;)Z
ifeq L3
new java/io/IOException
dup
ldc "In re-direct loop"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 3
L3:
aload 0
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/connectionFactory Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;
aload 1
invokeinterface com/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory/build(Ljava/net/URL;)Ljava/net/HttpURLConnection; 1
putfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
aload 4
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L4:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 6
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
aload 6
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 6
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/net/HttpURLConnection/addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
goto L4
L5:
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
sipush 2500
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
sipush 2500
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
iconst_0
invokevirtual java/net/HttpURLConnection/setUseCaches(Z)V
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
iconst_1
invokevirtual java/net/HttpURLConnection/setDoInput(Z)V
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/connect()V
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/isCancelled Z
ifeq L6
aconst_null
areturn
L6:
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getResponseCode()I
istore 5
iload 5
bipush 100
idiv
iconst_2
if_icmpne L7
aload 0
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
invokespecial com/bumptech/glide/load/data/HttpUrlFetcher/getStreamForSuccessfulRequest(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
areturn
L7:
iload 5
bipush 100
idiv
iconst_3
if_icmpne L8
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
ldc "Location"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
new java/io/IOException
dup
ldc "Received empty or null redirect url"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L9:
aload 0
new java/net/URL
dup
aload 1
aload 3
invokespecial java/net/URL/<init>(Ljava/net/URL;Ljava/lang/String;)V
iload 2
iconst_1
iadd
aload 1
aload 4
invokespecial com/bumptech/glide/load/data/HttpUrlFetcher/loadDataWithRedirects(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
areturn
L8:
iload 5
iconst_m1
if_icmpne L10
new java/io/IOException
dup
ldc "Unable to retrieve response code from HttpUrlConnection."
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L10:
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Request failed "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ": "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/getResponseMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 7
.limit stack 5
.end method

.method public cancel()V
aload 0
iconst_1
putfield com/bumptech/glide/load/data/HttpUrlFetcher/isCancelled Z
return
.limit locals 1
.limit stack 2
.end method

.method public cleanup()V
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/stream Ljava/io/InputStream;
ifnull L1
L0:
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/stream Ljava/io/InputStream;
invokevirtual java/io/InputStream/close()V
L1:
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
ifnull L3
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/urlConnection Ljava/net/HttpURLConnection;
invokevirtual java/net/HttpURLConnection/disconnect()V
L3:
return
L2:
astore 1
goto L1
.limit locals 2
.limit stack 1
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/glideUrl Lcom/bumptech/glide/load/model/GlideUrl;
invokevirtual com/bumptech/glide/load/model/GlideUrl/getCacheKey()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
.throws java/lang/Exception
aload 0
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/glideUrl Lcom/bumptech/glide/load/model/GlideUrl;
invokevirtual com/bumptech/glide/load/model/GlideUrl/toURL()Ljava/net/URL;
iconst_0
aconst_null
aload 0
getfield com/bumptech/glide/load/data/HttpUrlFetcher/glideUrl Lcom/bumptech/glide/load/model/GlideUrl;
invokevirtual com/bumptech/glide/load/model/GlideUrl/getHeaders()Ljava/util/Map;
invokespecial com/bumptech/glide/load/data/HttpUrlFetcher/loadDataWithRedirects(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
areturn
.limit locals 2
.limit stack 5
.end method

.method public volatile synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/bumptech/glide/load/data/HttpUrlFetcher/loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
areturn
.limit locals 2
.limit stack 2
.end method
