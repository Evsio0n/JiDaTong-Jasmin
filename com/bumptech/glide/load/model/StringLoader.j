.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/StringLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoader
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoader<Ljava/lang/String;TT;>;"

.field private final 'uriLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;"

.method public <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/StringLoader/uriLoader Lcom/bumptech/glide/load/model/ModelLoader;
return
.limit locals 2
.limit stack 2
.end method

.method private static toFileUri(Ljava/lang/String;)Landroid/net/Uri;
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
areturn
.limit locals 1
.limit stack 3
.end method

.method public volatile synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 1
checkcast java/lang/String
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/StringLoader/getResourceFetcher(Ljava/lang/String;II)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getResourceFetcher(Ljava/lang/String;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Ljava/lang/String;II)Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
aload 1
ldc "/"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L1
aload 1
invokestatic com/bumptech/glide/load/model/StringLoader/toFileUri(Ljava/lang/String;)Landroid/net/Uri;
astore 4
L2:
aload 0
getfield com/bumptech/glide/load/model/StringLoader/uriLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 4
iload 2
iload 3
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
areturn
L1:
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
astore 5
aload 5
astore 4
aload 5
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
ifnonnull L2
aload 1
invokestatic com/bumptech/glide/load/model/StringLoader/toFileUri(Ljava/lang/String;)Landroid/net/Uri;
astore 4
goto L2
.limit locals 6
.limit stack 4
.end method
