.bytecode 50.0
.class synchronized com/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory
.super java/lang/Object
.implements com/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory
.inner class private static DefaultHttpUrlConnectionFactory inner com/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory outer com/bumptech/glide/load/data/HttpUrlFetcher

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/bumptech/glide/load/data/HttpUrlFetcher$1;)V
aload 0
invokespecial com/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public build(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.throws java/io/IOException
aload 1
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
areturn
.limit locals 2
.limit stack 1
.end method
