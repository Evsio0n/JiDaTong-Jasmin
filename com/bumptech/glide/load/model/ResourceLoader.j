.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/ResourceLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoader
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoader<Ljava/lang/Integer;TT;>;"

.field private static final 'TAG' Ljava/lang/String; = "ResourceLoader"

.field private final 'resources' Landroid/content/res/Resources;

.field private final 'uriLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;"

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;)V"
aload 0
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 2
invokespecial com/bumptech/glide/load/model/ResourceLoader/<init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/ResourceLoader/resources Landroid/content/res/Resources;
aload 0
aload 2
putfield com/bumptech/glide/load/model/ResourceLoader/uriLoader Lcom/bumptech/glide/load/model/ModelLoader;
return
.limit locals 3
.limit stack 2
.end method

.method public getResourceFetcher(Ljava/lang/Integer;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Ljava/lang/Integer;II)Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
.catch android/content/res/Resources$NotFoundException from L0 to L1 using L2
aconst_null
astore 5
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "android.resource://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/model/ResourceLoader/resources Landroid/content/res/Resources;
aload 1
invokevirtual java/lang/Integer/intValue()I
invokevirtual android/content/res/Resources/getResourcePackageName(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 47
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/model/ResourceLoader/resources Landroid/content/res/Resources;
aload 1
invokevirtual java/lang/Integer/intValue()I
invokevirtual android/content/res/Resources/getResourceTypeName(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 47
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/model/ResourceLoader/resources Landroid/content/res/Resources;
aload 1
invokevirtual java/lang/Integer/intValue()I
invokevirtual android/content/res/Resources/getResourceEntryName(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
astore 4
L1:
aload 4
ifnull L3
aload 0
getfield com/bumptech/glide/load/model/ResourceLoader/uriLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 4
iload 2
iload 3
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
areturn
L2:
astore 6
aload 5
astore 4
ldc "ResourceLoader"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "ResourceLoader"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Received invalid resource id: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 6
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 5
astore 4
goto L1
L3:
aconst_null
areturn
.limit locals 7
.limit stack 4
.end method

.method public volatile synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 1
checkcast java/lang/Integer
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/ResourceLoader/getResourceFetcher(Ljava/lang/Integer;II)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
.limit locals 4
.limit stack 4
.end method
