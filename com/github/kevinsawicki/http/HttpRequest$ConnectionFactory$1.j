.bytecode 50.0
.class synchronized com/github/kevinsawicki/http/HttpRequest$ConnectionFactory$1
.super java/lang/Object
.implements com/github/kevinsawicki/http/HttpRequest$ConnectionFactory
.enclosing method com/github/kevinsawicki/http/HttpRequest$ConnectionFactory
.inner class public static abstract interface ConnectionFactory inner com/github/kevinsawicki/http/HttpRequest$ConnectionFactory outer com/github/kevinsawicki/http/HttpRequest
.inner class inner com/github/kevinsawicki/http/HttpRequest$ConnectionFactory$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.throws java/io/IOException
aload 1
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
areturn
.limit locals 2
.limit stack 1
.end method

.method public create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.throws java/io/IOException
aload 1
aload 2
invokevirtual java/net/URL/openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
areturn
.limit locals 3
.limit stack 2
.end method
