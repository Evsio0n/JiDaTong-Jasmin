.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/load/model/UriLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoader
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;"

.field private final 'context' Landroid/content/Context;

.field private final 'urlLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;TT;>;"

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;TT;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/UriLoader/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/load/model/UriLoader/urlLoader Lcom/bumptech/glide/load/model/ModelLoader;
return
.limit locals 3
.limit stack 2
.end method

.method private static isLocalUri(Ljava/lang/String;)Z
ldc "file"
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc "content"
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc "android.resource"
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected abstract getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
.end method

.method protected abstract getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
.end method

.method public final getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
aload 1
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
astore 6
aconst_null
astore 5
aload 6
invokestatic com/bumptech/glide/load/model/UriLoader/isLocalUri(Ljava/lang/String;)Z
ifeq L0
aload 1
invokestatic com/bumptech/glide/load/model/AssetUriParser/isAssetUri(Landroid/net/Uri;)Z
ifeq L1
aload 1
invokestatic com/bumptech/glide/load/model/AssetUriParser/toAssetPath(Landroid/net/Uri;)Ljava/lang/String;
astore 1
aload 0
aload 0
getfield com/bumptech/glide/load/model/UriLoader/context Landroid/content/Context;
aload 1
invokevirtual com/bumptech/glide/load/model/UriLoader/getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
astore 4
L2:
aload 4
areturn
L1:
aload 0
aload 0
getfield com/bumptech/glide/load/model/UriLoader/context Landroid/content/Context;
aload 1
invokevirtual com/bumptech/glide/load/model/UriLoader/getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
L0:
aload 5
astore 4
aload 0
getfield com/bumptech/glide/load/model/UriLoader/urlLoader Lcom/bumptech/glide/load/model/ModelLoader;
ifnull L2
ldc "http"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 5
astore 4
ldc "https"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
L3:
aload 0
getfield com/bumptech/glide/load/model/UriLoader/urlLoader Lcom/bumptech/glide/load/model/ModelLoader;
new com/bumptech/glide/load/model/GlideUrl
dup
aload 1
invokevirtual android/net/Uri/toString()Ljava/lang/String;
invokespecial com/bumptech/glide/load/model/GlideUrl/<init>(Ljava/lang/String;)V
iload 2
iload 3
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
areturn
.limit locals 7
.limit stack 4
.end method

.method public volatile synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 1
checkcast android/net/Uri
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/UriLoader/getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
.limit locals 4
.limit stack 4
.end method
