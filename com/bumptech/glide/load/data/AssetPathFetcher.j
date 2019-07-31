.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/load/data/AssetPathFetcher
.super java/lang/Object
.implements com/bumptech/glide/load/data/DataFetcher
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"

.field private static final 'TAG' Ljava/lang/String; = "AssetUriFetcher"

.field private final 'assetManager' Landroid/content/res/AssetManager;

.field private final 'assetPath' Ljava/lang/String;

.field private 'data' Ljava/lang/Object; signature "TT;"

.method public <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/data/AssetPathFetcher/assetManager Landroid/content/res/AssetManager;
aload 0
aload 2
putfield com/bumptech/glide/load/data/AssetPathFetcher/assetPath Ljava/lang/String;
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
getfield com/bumptech/glide/load/data/AssetPathFetcher/data Ljava/lang/Object;
ifnonnull L0
L3:
return
L0:
aload 0
aload 0
getfield com/bumptech/glide/load/data/AssetPathFetcher/data Ljava/lang/Object;
invokevirtual com/bumptech/glide/load/data/AssetPathFetcher/close(Ljava/lang/Object;)V
L1:
return
L2:
astore 1
ldc "AssetUriFetcher"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L3
ldc "AssetUriFetcher"
ldc "Failed to close data"
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
getfield com/bumptech/glide/load/data/AssetPathFetcher/assetPath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
.signature "(Lcom/bumptech/glide/Priority;)TT;"
.throws java/lang/Exception
aload 0
aload 0
aload 0
getfield com/bumptech/glide/load/data/AssetPathFetcher/assetManager Landroid/content/res/AssetManager;
aload 0
getfield com/bumptech/glide/load/data/AssetPathFetcher/assetPath Ljava/lang/String;
invokevirtual com/bumptech/glide/load/data/AssetPathFetcher/loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
putfield com/bumptech/glide/load/data/AssetPathFetcher/data Ljava/lang/Object;
aload 0
getfield com/bumptech/glide/load/data/AssetPathFetcher/data Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected abstract loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
.signature "(Landroid/content/res/AssetManager;Ljava/lang/String;)TT;"
.throws java/io/IOException
.end method
