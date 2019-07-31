.bytecode 50.0
.class public abstract interface com/github/kevinsawicki/http/HttpRequest$ConnectionFactory
.super java/lang/Object
.inner class public static abstract interface ConnectionFactory inner com/github/kevinsawicki/http/HttpRequest$ConnectionFactory outer com/github/kevinsawicki/http/HttpRequest
.inner class inner com/github/kevinsawicki/http/HttpRequest$ConnectionFactory$1

.field public static final 'DEFAULT' Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

.method static <clinit>()V
new com/github/kevinsawicki/http/HttpRequest$ConnectionFactory$1
dup
invokespecial com/github/kevinsawicki/http/HttpRequest$ConnectionFactory$1/<init>()V
putstatic com/github/kevinsawicki/http/HttpRequest$ConnectionFactory/DEFAULT Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public abstract create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.throws java/io/IOException
.end method

.method public abstract create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.throws java/io/IOException
.end method
