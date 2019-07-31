.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/load/data/LocalUriFetcher
.super java/lang/Object
.implements com/bumptech/glide/load/data/DataFetcher
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"

.field private static final 'TAG' Ljava/lang/String; = "LocalUriFetcher"

.field private final 'context' Landroid/content/Context;

.field private 'data' Ljava/lang/Object; signature "TT;"

.field private final 'uri' Landroid/net/Uri;

.method public <init>(Landroid/content/Context;Landroid/net/Uri;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/bumptech/glide/load/data/LocalUriFetcher/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/load/data/LocalUriFetcher/uri Landroid/net/Uri;
return
.limit locals 3
.limit stack 2
.end method

.method public cancel()V
return
.limit locals 1
.limit stack 0
.end method

.method public cleanup()V
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/bumptech/glide/load/data/LocalUriFetcher/data Ljava/lang/Object;
ifnull L1
L0:
aload 0
aload 0
getfield com/bumptech/glide/load/data/LocalUriFetcher/data Ljava/lang/Object;
invokevirtual com/bumptech/glide/load/data/LocalUriFetcher/close(Ljava/lang/Object;)V
L1:
return
L2:
astore 1
ldc "LocalUriFetcher"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "LocalUriFetcher"
ldc "failed to close data"
aload 1
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
return
.limit locals 2
.limit stack 3
.end method

.method protected abstract close(Ljava/lang/Object;)V
.signature "(TT;)V"
.throws java/io/IOException
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/data/LocalUriFetcher/uri Landroid/net/Uri;
invokevirtual android/net/Uri/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
.signature "(Lcom/bumptech/glide/Priority;)TT;"
.throws java/lang/Exception
aload 0
getfield com/bumptech/glide/load/data/LocalUriFetcher/context Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
astore 1
aload 0
aload 0
aload 0
getfield com/bumptech/glide/load/data/LocalUriFetcher/uri Landroid/net/Uri;
aload 1
invokevirtual com/bumptech/glide/load/data/LocalUriFetcher/loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
putfield com/bumptech/glide/load/data/LocalUriFetcher/data Ljava/lang/Object;
aload 0
getfield com/bumptech/glide/load/data/LocalUriFetcher/data Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected abstract loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
.signature "(Landroid/net/Uri;Landroid/content/ContentResolver;)TT;"
.throws java/io/FileNotFoundException
.end method
